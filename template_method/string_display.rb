require './abstract_display'

class StringDisplay < AbstractDisplay
  def initialize(string)
    @string = string
    @width = @string.size
  end

  def open
    print_line
  end

  def print
    p "|#{@string}|"
  end

  def close
    print_line
  end

  private
  def print_line
    p "*"
    for i in 1..@width do
      p "-"
    end
    p "*"
  end
end