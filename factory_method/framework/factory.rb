require_relative './product'

class Factory
  def create(owner)
    product = create_product(owner)
    register_product(product)
    product
  end

  def create_product(owner)
    raise NotImplementError
  end

  def register_product(product)
    raise NotImplementError
  end
end