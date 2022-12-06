class Elf
  attr_reader :food_items
  
  def initialize(food_items)
    @food_items = food_items
  end

  def calories_carried
    food_items.sum(&:calories)
  end
end