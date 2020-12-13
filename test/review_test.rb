require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'

class ReviewTest < Minitest::Test

  def test_it_exists
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_instance_of Review, review
  end

  def test_it_has_a_first_name
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_equal "Aral", review.reviewer_first_name
  end

  def test_it_has_a_last_name
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_equal "Nuraduum", review.reviewer_last_name
  end

  def test_it_has_a_score
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_equal "4.5", review.score
  end
end


    # pry(main)> require './lib/review'
    # # => true
    #
    # # => #<Review:0x00007fd8273d21e0...>
    #
    # # => "Aral"
    #
    # pry(main)> review.reviewer_last_name
    # # => "Nuraduum"
    #
    # pry(main)> review.score
    # # => 4.5
