require "active_support/core_ext/array/grouping"

class Elves < Array
  def self.from_text(input)
    elves = input.split("").map do |food_calories| # standard:disable Style/StringChars
      Elf.new food_calories.map { |calories| FoodItem.new(calories.to_i) }
    end
    new(elves)
  end

  def calories
    map(&:calories_carried)
  end
end
