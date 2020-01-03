require_relative '../factory/item'
require_relative '../factory/link'
require_relative '../factory/tray'
require_relative '../factory/page'

require_relative './table_link'
require_relative './table_tray'
require_relative './table_page'

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

class TableFactory < Factory
  def create_link(caption, url)
    TableLink.new(caption, url)
  end

  def create_tray(caption)
    TableTray.new(caption)
  end

  def create_page(title, author)
    TablePage.new(title, author)
  end

end