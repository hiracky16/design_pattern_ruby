require './builder'

class TextBuilder < Builder
  def initialize
    @string = ''
  end

  def make_title(title)
    tmp = <<EOS
==============================
  [ #{title} ]
EOS
    # EOS はインデントしていると効果なし
    @string.concat(tmp)
  end

  def make_string(string)
    @string.concat(" #{string}\n\n")
  end

  def make_items(items)
    for i in 0..items.size - 1
      @string.concat(" - #{items[i]}\n")
    end
    @string.concat("\n")
  end

  def close
    @string.concat("==============================\n")
  end

  def result
    @string
  end
end