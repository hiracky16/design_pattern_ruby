require_relative './product'

class Manager
  def initialize
    @showcase = {}
  end

  def register(name, product)
    @showcase[name] = product
  end

  def create(name)
    product = @showcase[name]
    product.clone
  end
end