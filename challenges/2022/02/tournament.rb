class Tournament
  def initialize(rounds)
    @rounds = rounds
  end

  def total_score
    @rounds.sum {|round| round.score }
  end

  def self.from_data(data)
    rounds = data.map do |datum|
      Round.from_text(datum)
    end
    new(rounds)
  end
end