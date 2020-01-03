require './display_impl'

class StringDisplayImpl < DisplayImpl
  def initialize(string)
    @string = string
    @width = @string.size
  end

  def raw_open
    print_line
  end

  def raw_print
    puts "|#{@string}|"
  end

  def raw_close
    print_line
  end

  private
  def print_line
    print "+"
    for i in 1..@width
      print "-"
    end
    puts "+"
  end
end