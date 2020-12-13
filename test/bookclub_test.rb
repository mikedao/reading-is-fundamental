require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'
require './lib/book'
require './lib/bookclub'

class BookClubTest < Minitest::Test

  def test_it_exists
    bookclub = BookClub.new("Reading Rainbow Club")

    assert_instance_of BookClub, bookclub
  end

  def test_it_has_a_name
  bookclub = BookClub.new("Reading Rainbow Club")

    assert_equal "Reading Rainbow Club", bookclub.name
  end
end
