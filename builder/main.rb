require './text_builder'
require './html_builder'
require './director'

if ARGV.size != 1
  exit
end

if ARGV[0] == 'plain'
  tb = TextBuilder.new
  director = Director.new(tb)
  director.construct
  string = tb.result
  puts string
elsif ARGV[0] == 'html'
  hb = HTMLBuilder.new
  director = Director.new(hb)
  director.construct
  filename = hb.result
  puts "#{filename} が作成されました。"
else
  exit
end
