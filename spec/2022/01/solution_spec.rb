# frozen_string_literal: true

require "spec_helper"

RSpec.describe Year2022::Day01 do
  let(:input) { File.read(File.join(File.dirname(__FILE__), "../../../challenges/2022/01/input.txt")) }
  let(:example_input) {
    <<~EOF
      1000
      2000
      3000
      
      4000
      
      5000
      6000
      
      7000
      8000
      9000
      
      10000
    EOF
  }

  describe "part 1" do
    it "returns the most calories carried by any single elf" do
      expect(described_class.part_1(example_input)).to eq(24_000)
    end

    it "returns 72511 for my input" do
      expect(described_class.part_1(input)).to eq(72_511)
    end
  end

  describe "part 2" do
    it "returns the total calories carried by the top three elves" do
      expect(described_class.part_2(example_input)).to eq(45_000)
    end

    it "returns nil for my input" do
      expect(described_class.part_2(input)).to eq(212_117)
    end
  end
end
