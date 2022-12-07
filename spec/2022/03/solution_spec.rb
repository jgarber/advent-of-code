# frozen_string_literal: true

require "spec_helper"

RSpec.describe Year2022::Day03 do
  let(:input) { File.read(File.join(File.dirname(__FILE__), "../../../challenges/2022/03/input.txt")) }
  let(:example_input) {
    <<~EOF
      vJrwpWtwJgWrhcsFMMfFFhFp
      jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
      PmmdzqPrVvPwwTWBwg
      wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
      ttgJtRGJQctTZtZT
      CrZsJsPPZsGzwwsLwLmpwMDw
    EOF
  }

  describe "part 1" do
    it "returns the sum of the items' priorities for the example input" do
      expect(described_class.part_1(example_input)).to eq(157)
    end

    it "returns the answer for my input" do
      expect(described_class.part_1(input)).to eq(7691)
    end
  end

  describe "part 2" do
    it "returns nil for the example input" do
      expect(described_class.part_2(example_input)).to eq(70)
    end

    it "returns my answer for my input" do
      expect(described_class.part_2(input)).to eq(2508)
    end
  end
end
