require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'
require './lib/book'

class BookTest < Minitest::Test

  def test_it_exists
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    assert_instance_of Book, book
  end

  def test_it_has_a_title
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    assert_equal 'Practical Object Oriented Design in Ruby', book.title
  end

  def test_it_has_an_author
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    assert_equal 'Sandi Metz', book.author
  end

  def test_it_is_not_read_by_default
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    assert_equal false, book.read?
  end

  def test_it_can_be_read
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    book.read = true

    assert_equal true, book.read?
  end

  def test_it_can_have_reviews
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})
    review_1 = Review.new({name: "Aral Nuraduum", score: "3.5"})
    review_2 = Review.new({name: "Aniz Arazak", score: "5.0"})

    book.add_review(review_1)
    book.add_review(review_2)

    assert_equal [review_1, review_2], book.reviews
  end

  def test_it_can_return_only_good_reviews
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})
    review_1 = Review.new({name: "Aral Nuraduum", score: "3.5"})
    review_2 = Review.new({name: "Aniz Arazak", score: "5.0"})

    book.add_review(review_1)
    book.add_review(review_2)

    assert_equal [review_1, review_2], book.reviews_greater_than(3)
    assert_equal [review_2], book.reviews_greater_than(4)
  end
end
