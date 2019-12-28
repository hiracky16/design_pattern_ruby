# ruby は複数のクラスを継承することができない
# そのため module で作る
module Banner
  def initialize(string)
    @string = string
  end

  def show_with_paren
    puts "(#{@string})"
  end

  def show_with_aster
    puts "*#{@string}*"
  end
end