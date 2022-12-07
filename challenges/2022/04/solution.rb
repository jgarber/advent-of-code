# frozen_string_literal: true

module Year2022
  class Day04 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      data.map do |text|
        AssignmentPair.from_text(text)
      end.count { |pair| pair.fully_overlapping? }
    end

    def part_2
      data.map do |text|
        AssignmentPair.from_text(text)
      end.count { |pair| pair.overlapping? }
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
