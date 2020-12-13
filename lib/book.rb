class Book
  attr_reader :book

  def initialize(book)
    @book = book
  end

  def title
    @book.values.first
  end
end
