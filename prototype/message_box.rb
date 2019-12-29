require_relative './framework/product'

class MessageBox < Product
  def initialize(char)
    @decochar = char
  end

  def use(string)
    len = string.size
    for i in 1..len + 4 do
      print @decochar
    end
    puts ''
    puts "#{@decochar} #{string} #{@decochar}"
    for i in 1..len + 4 do
      print @decochar
    end
    puts ''
  end
end