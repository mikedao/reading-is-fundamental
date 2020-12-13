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
end
