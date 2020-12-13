class Book
  attr_reader :book,
              :reviews
  attr_writer :read

  def initialize(book)
    @book = book
    @read = false
    @reviews = []
  end

  def title
    @book.values.first
  end

  def author
    @book.values.last
  end

  def read?
    @read
  end

  def read
    self.read = true
  end

  def add_review(review)
    @reviews << review
  end
end
