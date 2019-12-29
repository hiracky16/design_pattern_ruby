require_relative '../framework/product'

class IdCard < Product
  # これを書くとインスタンス変数にアクセスできる
  attr_accessor :owner
  def initialize(owner)
    @owner = owner
    puts "#{@owner} のカードを作ります。"
  end

  def use
    puts "#{@owner} のカードを使います。"
  end
end