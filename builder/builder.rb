class Builder
  def make_title(title)
    raise NoImplementedError
  end

  def make_string(string)
    raise NoImplementedError
  end

  def make_items(string)
    raise NoImplementedError
  end

  def close
    raise NoImplementedError
  end
end