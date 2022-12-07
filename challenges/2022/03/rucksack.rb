require "active_support/core_ext/array/grouping"

class Rucksack < Array
  def duplicate_item
    Item.new(inject(:intersection).first)
  end

  def self.from_text(text)
    new(text.chars.in_groups(2))
  end
end
