require './book_shelf'
require './book'

book_shelf = BookShelf.new
book_shelf.add(Book.new('title1'))
book_shelf.add(Book.new('title2'))
book_shelf.add(Book.new('title3'))
book_shelf.add(Book.new('title4'))

iterator = book_shelf.iterator
while(iterator.has_next?)
  book = iterator.next
  puts book.name
end