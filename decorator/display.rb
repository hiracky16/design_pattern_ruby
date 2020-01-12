class Display
  def columns
    raise NoImplementedError
  end

  def rows
    raise NoImplementedError
  end

  def row_text(row)
    raise NoImplementedError
  end

  def show
    for i in 0..(rows - 1)
      puts row_text(i)
    end
  end
end