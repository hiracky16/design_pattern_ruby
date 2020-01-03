require_relative './item'
require_relative './link'
require_relative './tray'
require_relative './page'
require_relative '../listfactory/list_factory'
require_relative '../tablefactory/table_factory'

class Factory
  def self.get_factory(classname)
    begin
      factory = Object.const_get(classname).new
      puts factory
      return factory
    rescue
      puts 'クラスが見つかりません'
      exit
    end
  end

  def create_link(caption, url)
    raise NoImplementedError
  end

  def create_tray(caption)
    raise NoImplementedError
  end

  def create_page(title, author)
    raise NoImplementedError
  end
end