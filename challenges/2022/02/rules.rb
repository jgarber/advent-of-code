module Rules
  RANK = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }
  CHOICES = RANK.keys
  OUTCOMES = [:lose, :draw, :win]
end
