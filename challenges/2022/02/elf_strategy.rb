require_relative 'naive_strategy'
require_relative 'rules'

class ElfStrategy < NaiveStrategy
  include Rules

  STRATEGY_KEY = {
    X: :lose,
    Y: :draw,
    Z: :win
  }

  def self.decode(data)
    their_code, outcome_code = data.split(" ")
    their_choice = KEY[their_code.to_sym]
    strategy = STRATEGY_KEY[outcome_code.to_sym]
    our_choice = self.choose_response(strategy, their_choice)

    return their_choice, our_choice
  end

  def self.choose_response(strategy, their_choice)
    rotation = {lose: -1, draw: 0, win: 1}[strategy]
    CHOICES.rotate(rotation)[CHOICES.index(their_choice)]
  end
end