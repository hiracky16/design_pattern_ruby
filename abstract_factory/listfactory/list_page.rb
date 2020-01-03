require_relative '../factory/page'

class ListPage < Page
  def initialize(title, author)
    super(title, author)
  end

  def make_html
    html = "<html><head><title>#{@title}</title></head>"
    html.concat("<body>")
    html.concat("<h1>#{@title}</h1>")
    html.concat("<ul>")
    @content.each do |c|
      html.concat(c.make_html)
    end
    html.concat("</ul>")
    html.concat("<hr><address>#{@author}</address>")
    html.concat("</body></html>")
    html
  end
end