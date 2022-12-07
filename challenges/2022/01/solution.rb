# frozen_string_literal: true

module Year2022
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      elves.calories.max
    end

    def part_2
      elves.calories.sort.last(3).sum
    end

    private

    def elves
      Elves.from_text(data)
    end
  end
end
