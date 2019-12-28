require './book'
require './aggregate'
require './book_shelf_iterator'

class BookShelf < Aggregate
  def initialize
    @books = []
  end

  def at(index)
    @books[index]
  end

  def add(book)
    @books.push(book)
  end

  def length
    @books.size
  end

  def iterator
    BookShelfIterator.new(self)
  end
end