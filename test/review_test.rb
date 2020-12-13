require 'minitest/autorun'
require 'minitest/pride'
require './lib/review'

class ReviewTest < Minitest::Test

  def test_it_exists
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_instance_of Review, review
  end

  def test_it_can_split_names
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_equal ["Aral", "Nuraduum"], review.split_name
  end
  
  def test_reviewer_has_a_first_name
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})
    assert_equal "Aral", review.reviewer_first_name
  end

  def test_reveiwer_has_a_last_name
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_equal "Nuraduum", review.reviewer_last_name
  end

  def test_review_has_a_score
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_equal 4.5, review.score
  end
end
