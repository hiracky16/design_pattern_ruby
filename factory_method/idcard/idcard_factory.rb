# 相対パスの場合 require_relative を使う
require_relative '../framework/factory'
require_relative './idcard'

class IdCardFactory < Factory
  attr_accessor :owners
  def initialize
    @owners = []
  end

  def create_product(owner)
    IdCard.new(owner)
  end

  def register_product(product)
    @owners.push(product.owner)
  end
end