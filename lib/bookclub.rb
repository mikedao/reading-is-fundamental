class BookClub
  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(book)
    @books.push(book)
  end

  def unread_books
    books.reject do |book|
      book.read?
    end
  end

  def read_books
    books.select do |book|
      book.read?
    end
  end

  def read_book(book)
    book.read = true
  end

end
