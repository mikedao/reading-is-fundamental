require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'
require './lib/book'
require './lib/bookclub'

class BookClubTest < Minitest::Test

  def test_it_exists
    club = BookClub.new

    assert_instance_of BookClub, club
  end

  def test_it_does_not_have_books_by_default
    club = BookClub.new

    assert_equal [], club.books
  end

  def test_it_can_add_books
    club = BookClub.new
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    club.add_book(book)

    assert_equal [book], club.books
  end

  
end
