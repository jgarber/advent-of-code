# frozen_string_literal: true

module Year2022
  class Day03 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1 # Quick 'n' dirty
      data.map { |t| Rucksack.from_text(t) }.sum { |r| r.duplicate_item.value }
    end

    def part_2 # FIXME: not very OO, not TDDed
      groups = data.in_groups_of(3)
      groups.map do |group|
        group.map(&:chars).inject(&:intersection).first
      end.sum { |badge| Item.new(badge).value }
    end

    private

    # Processes each line of the input file and stores the result in the dataset
    # def process_input(line)
    #   line.map(&:to_i)
    # end

    # Processes the dataset as a whole
    # def process_dataset(set)
    #   set
    # end
  end
end
