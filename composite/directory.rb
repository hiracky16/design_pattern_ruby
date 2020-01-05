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

  # ruby にはオーバーロードが存在しないためデフォルト引数を設定
  def print_list(prefix='')
    @size = size
    puts "#{prefix}/#{self.to_string}"
    @directory.each do |d|
      d.print_list("#{prefix}/#{@name}")
    end
  end
end
