class Round
  RANK = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }
  CHOICES = RANK.keys
  OUTCOMES = [:lose, :draw, :win]
  CHOICE_CODES = %w[A B C X Y Z]

  attr_reader :their_choice, :our_choice

  def initialize(*args)
    raise ArgumentError unless args.all? {|a| CHOICES.include?(a) }
    @their_choice, @our_choice = args.first(2)
  end

  def outcome
    if RANK[@our_choice] == @their_choice
      :win
    elsif RANK[@their_choice] == @our_choice
      :lose
    else
      :draw
    end
  end

  def our_choice_score
    CHOICES.index(@our_choice) + 1
  end

  def our_outcome_score
    OUTCOMES.index(outcome) * 3
  end

  def score
    our_choice_score + our_outcome_score
  end

  def ==(other)
    return super unless other.is_a?(Round)

    their_choice == other.their_choice && our_choice == other.our_choice
  end

  def self.from_text(data)
    choice_codes = data.split(" ")
    round_choices = choice_codes.map do |code|
      index = CHOICE_CODES.index(code) % 3
      CHOICES[index]
    end
    new(*round_choices)
  end
end