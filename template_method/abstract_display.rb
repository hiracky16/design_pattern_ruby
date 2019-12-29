class AbstractDisplay
  def open
    raise NotImplementedError
  end

  def print
    raise NotImplementedError
  end

  def close
    raise NotImplementedError
  end

  def display
    open
    for i in 1..5 do
      print
    end
    close
  end
end