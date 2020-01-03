require_relative '../factory/tray'

class TableTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    html = "<td><table width=\"100%\" border=\"1\"><tr>"
    html.concat("<td bgcolor=\"#cccccc\" align=\"center\" colspan=\"#{@tray.size}\"><b>#{@caption}</b><tr>")
    html.concat("</tr>")
    html.concat("<tr>")
    @tray.each do |t|
      html.concat(t.make_html)
    end
    html.concat("</tr></table>")
    html.concat("</td>")
    html
  end
end