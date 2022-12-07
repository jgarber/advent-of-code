# frozen_string_literal: true
module Year2022
  class Day02 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      Tournament.from_data(data).total_score
    end

    def part_2
      nil
    end
  end
end
