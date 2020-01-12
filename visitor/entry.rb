require './file_treatment_exception'
require './element'

class Entry < Element
  attr_accessor :name, :size

  def initialize(name, size)
    @name = name
    @size = size
  end

  def add(entry)
    raise FileTreatmentException, 'ディレクトリ以外で実装しないでください。'
  end

  # def print_list
  #   print_list('')
  # end

  # ruby にはオーバーロードが存在しないためデフォルト引数を設定
  # def print_list(string='')
  #   raise NoImplementedError
  # end

  def to_string
    "#{@name} (#{@size})"
  end
end