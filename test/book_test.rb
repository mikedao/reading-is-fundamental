require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'
require './lib/book'

class BookTest < Minitest::Test

  def test_it_exists
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    assert_instance_of Book, book
  end

end
  # Use TDD to create a `Book` class that responds to the following interaction pattern:
  #
  # * `#reviews` returns an array of review objects that belong to the book.
  #
  # ```ruby
  # pry(main)> require './lib/review'
  # # => true
  #
  #
  # pry(main)> require './lib/book'
  # # => true
  #
  # # => #<Book:0x00007fe0d0851138...>
  #
  # pry(main)> book.title
  # # => 'Practical Object Oriented Design in Ruby'
  #
  # pry(main)> book.author
  # # => 'Sandi Metz'
  #
  # pry(main)> book.read?
  # # => false
  #
  # pry(main)> book.read = true
  #
  # pry(main)> book.read?
  # # => true
  #
  # pry(main)> review_1 = Review.new({name: "Aral Nuraduum", score: "3.5"})
  # # => #<Review:0x00007fd8273d21e0...>
  #
  # pry(main)> review_2 = Review.new({name: "Aniz Arazak", score: "5.0"})
  # # => #<Review:0x0012fdabcd3d21e0...>
  #
  # pry(main)> book.add_review(review_1)
  #
  # pry(main)> book.add_review(review_2)
  #
  # pry(main)> book.reviews
  # # => [#<Review:0x00007fd8273d21e0...>, #<Review:0x0012fdabcd3d21e0...>]
  #
  # pry(main)> book.reviews_greater_than(3)
  # # => [#<Review:0x00007fd8273d21e0...>, #<Review:0x0012fdabcd3d21e0...>]
  #
  # pry(main)> book.reviews_greater_than(4)
  # # => [#<Review:0x0012fdabcd3d21e0...>]
  # ```
