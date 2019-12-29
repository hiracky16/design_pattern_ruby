require './builder'

class HTMLBuilder < Builder
  def initialize
    @filename = ''
    @writer = nil
  end

  def make_title(title)
    @filename = title + '.html'
    @writer = File.open(@filename, 'w')
    string = <<EOS
      <html>
        <head>
          <title>#{title}</title>
        </head>
        <body>
          <h1>#{title}</h1>
EOS
    @writer.write(string)
  end

  def make_string(string)
    string = "<p>#{string}</p>"
    @writer.write(string)
  end

  def make_items(items)
    @writer.write('<ul>')
    for i in 1..items.size
      @writer.write("<li>#{items[i]}</li>")
    end
    @writer.write('</ul>')
  end

  def close
    @writer.write('</body></html>')
    @writer.close
  end

  def result
    @filename
  end
end