require './entry'

class Directory < Entry
  attr_accessor :directory

  def initialize(name)
    @name = name
    @directory = []
  end

  def size
    tmp = @directory.map do |d|
      d.size
    end
    tmp.sum
  end

  def add(entry)
    @directory.push(entry)
  end

  def accept(visitor)
    visitor.visit(directory: self)
  end
end
