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

  def total_reviews
    @total_reviews = 0
    @books.each do |book|
      @total_reviews += (book.reviews.count)
    end
  end

  def average_reviews_per_book
    total_reviews
    @average = (@total_reviews / @books.count)
  end

end
