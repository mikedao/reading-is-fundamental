require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'
require './lib/book'

class ReviewTest < Minitest::Test

  def test_it_exists
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    assert_instance_of Book, book
  end
end
