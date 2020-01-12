require './display'

class StringDisplay < Display
  def initialize(string)
    @string = string
  end

  def columns
    @string.size
  end

  def rows
    1
  end

  def row_text(row)
    row == 0 ? @string : nil
  end
end