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

  def test_it_has_unread_books
    club = BookClub.new
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    club.add_book(book)

    assert_equal [book], club.unread_books
  end

  def test_it_has_read_books
    club = BookClub.new
    book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})

    club.add_book(book)
    club.read_book(book)

    assert_equal [], club.unread_books
    assert_equal [book], club.read_books
  end

  def test_it_has_an_average_review_per_book
    club = BookClub.new
    book1 = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})
    book2 = Book.new({title: 'Learning Ruby the Hard Way', author: 'Zed Shaw'})
    review_1 = Review.new({name: "Aral Nuraduum", score: "3.5"})
    review_2 = Review.new({name: "Dan Mizer", score: "2.5"})
    review_3 = Review.new({name: "James Smith", score: "4.7"})
    review_4 = Review.new({name: "Aniz Arazak", score: "5.0"})

    club.add_book(book1)
    club.read_book(book1)
    club.add_book(book2)
    club.read_book(book2)
    book1.add_review(review_1)
    book1.add_review(review_2)
    book1.add_review(review_3)
    book2.add_review(review_4)

    assert_equal 2, club.average_reviews_per_book
  end

end
