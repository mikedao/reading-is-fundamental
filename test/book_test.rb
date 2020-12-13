require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'
require './lib/book'

class ReviewTest < Minitest::Test

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

end
