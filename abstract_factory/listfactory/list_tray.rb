require_relative '../factory/tray'

class ListTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    html = "<li>#{@caption}"
    html.concat('<ul>')
    @tray.each do |t|
      html.concat(t.make_html)
    end
    html.concat('</ul>')
    html.concat('</li>')
    html
  end
end