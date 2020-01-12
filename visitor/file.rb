require './entry'

# File クラスは ruby にすでに存在するため FileClass とした
class FileClass < Entry
  def initialize(name, size)
    super(name, size)
  end

  def accept(visitor)
    visitor.visit(file: self)
  end
end