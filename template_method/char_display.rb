require './abstract_display'

class CharDisplay < AbstractDisplay
  def initialize(char)
    @char = char
  end

  def open
    p "<<"
  end

  def print
    p @char
  end

  def close
    p ">>"
  end
end