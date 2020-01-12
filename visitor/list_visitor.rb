require './visitor'

class ListVisitor < Visitor
  def initilize
    @current_dir = ''
  end

  # ruby にはオーバーロードがないためデフォルト引数で対応
  def visit(file: nil, directory: nil)
    if file
      puts "#{@current_dir}/#{file.name}"
    end

    if directory
      puts "#{@current_dir}/#{directory.name}"
      save_dir = @current_dir
      @current_dir = "#{@current_dir}/#{directory.name}"
      directory.directory.each do |entry|
        entry.accept(self)
      end
      @current_dir = save_dir
    end
  end
end