class Item
  def initialize(caption)
    @caption = caption
  end

  def make_html
    raise NoImplementedError
  end
end