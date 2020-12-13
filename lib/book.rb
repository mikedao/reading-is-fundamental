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

  def reviews_greater_than(score)
    @reviews.find_all do |review|
      review.values.last > score
    end
  end
end
