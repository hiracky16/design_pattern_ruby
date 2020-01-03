class Page
  def initialize(title, author)
    @title = title
    @author = author
    @content = []
  end

  def add(item)
    @content.push(item)
  end

  def output
    filename = "#{@title}.html"
    writer = File.open(filename, 'w')
    writer.write(make_html)
    writer.close
    puts "#{filename} 作成しました"
  end

  def make_html
    raise NoImplementedError
  end
end