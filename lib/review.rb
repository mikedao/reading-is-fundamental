class Review
  attr_reader :review

  def initialize(review)
    @review = review
  end

  def split_name
    @first_and_last = @review[:name].split
    @first_name = @first_and_last[0]
    @last_name = @first_and_last[-1]
    @first_and_last
  end

  def reviewer_first_name
    split_name
    @first_name
  end

  def reviewer_last_name
    split_name
    @last_name
  end

  def score
    @review[:score].to_f
  end
end
