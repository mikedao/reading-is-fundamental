class Book
  attr_reader :book
  attr_writer :read

  def initialize(book)
    @book = book
    @read = false
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
end
