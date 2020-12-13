class Book
  attr_accessor :read
  def initialize(book)
    @book = book
    @read = false
  end

  def author
    @book[:author]
  end

  def title
    @book[:title]
  end

  def read?
    @read
  end
end
