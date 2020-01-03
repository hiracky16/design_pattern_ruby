require_relative '../factory/factory'
require_relative './list_link'
require_relative './list_tray'
require_relative './list_page'

require_relative '../factory/item'
require_relative '../factory/link'
require_relative '../factory/tray'
require_relative '../factory/page'

# const_get で文字列でクラス名を渡してインスタンスを作るようにしたが
# 同じファイル内にないと Factory が読めなかったため同ファイルに書く
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

class ListFactory < Factory
  def create_link(caption, url)
    ListLink.new(caption, url)
  end

  def create_tray(caption)
    ListTray.new(caption)
  end

  def create_page(title, author)
    ListPage.new(title, author)
  end
end