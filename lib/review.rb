class Review
  attr_reader :reviewer

  def initialize(reviewer)
    @reviewer = reviewer
  end

  def reviewer_first_name
    @reviewer.values.first.split.first.to_s
  end

  def reviewer_last_name
    @reviewer.values.first.split.last.to_s
  end

  def score
    @reviewer.values.last.to_f
  end
end
