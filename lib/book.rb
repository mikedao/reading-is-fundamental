class Book

  def initialize(book)
    @book = book
  end

  def author
    @book[:author]
  end

  def title
    @book[:title]
  end
end
