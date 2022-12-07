class Tournament
  def initialize(rounds)
    @rounds = rounds
  end

  def total_score
    @rounds.sum { |round| round.score }
  end
end
