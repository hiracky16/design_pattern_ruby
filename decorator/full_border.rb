require './border'

class FullBorder < Border
  def initialize(display)
    super(display)
  end

  def columns
    1 + @display.columns + 1
  end

  def rows
    1 + @display.rows + 1
  end

  def row_text(row)
    if row == 0
      return "+#{make_line('-', @display.columns)}+"
    elsif row == @display.rows + 1
      return "+#{make_line('-', @display.columns)}+"
    else
      return "|#{@display.row_text(row-1)}|"
    end
  end

  private
  def make_line(char, count)
    char * count
  end
end