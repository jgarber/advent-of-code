require 'spec_helper'

RSpec.describe Elves do
  let(:data) { ["1", "", "2", "3"] }

  describe ".from_text" do 
    it "creates elves from text input" do
      elves = Elves.from_text(data)
      expect(elves.length).to eq(2)
    end
  end

  describe "#calories" do
    it "returns an Array of calories each elf is carrying" do
      elves = Elves.from_text(data)
      expect(elves.calories).to eq([1, 5])
    end
  end
end