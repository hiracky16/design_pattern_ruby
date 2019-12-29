require_relative './framework/product'

class UnderLinePen < Product
  def initialize(char)
    @ulchar = char
  end

  def use(string)
    len = string.size
    puts "'#{string}''"
    print ' '
    for i in 1..len do
      print @ulchar
    end
    puts ''
  end
end