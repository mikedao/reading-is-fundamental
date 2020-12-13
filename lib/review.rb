class Review
  attr_reader :reviewer

  def initialize(reviewer)
    @reviewer = reviewer
  end

  def reviewer_first_name
    @reviewer.values.first.split[0].to_s
  end
end
