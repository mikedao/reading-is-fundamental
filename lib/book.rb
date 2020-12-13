class Book
  attr_accessor :read
  attr_reader :reviews
  def initialize(book)
    @book = book
    @read = false
    @reviews = []
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

  def add_review(review)
    @reviews.push(review)
  end

  def reviews_greater_than(arg)
    @reviews.select do |review|
      review.score > arg
    end
  end
end
