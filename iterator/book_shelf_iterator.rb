require './iterator'

class BookShelfIterator < Iterator
  def initialize(book_shelf)
    @book_shelf = book_shelf
    @index = 0
  end

  def has_next?
    @index < @book_shelf.length
  end

  def next
    book = @book_shelf.at(@index)
    @index = @index + 1
    book
  end
end