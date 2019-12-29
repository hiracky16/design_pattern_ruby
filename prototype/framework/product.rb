class Product
  def use
    raise NoImplementedError
  end


  # ruby の標準メソッド clone を使うためいらない
  # def clone
  #   raise NoImplementedError
  # end
end