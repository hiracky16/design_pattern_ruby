require './entry'

# File クラスは ruby にすでに存在するため FileClass とした
class FileClass < Entry
  def initialize(name, size)
    super(name, size)
  end

  def print_list(prefix)
    puts "#{prefix}/#{self.to_string}"
  end
end