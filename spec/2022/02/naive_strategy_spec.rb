require "spec_helper"

RSpec.describe NaiveStrategy do
  describe ".from_data" do
    it "creates rounds from the strategy data" do
      rounds = NaiveStrategy.from_data(["A X", "B Y"])
      expect(rounds.size).to eq(2)
      expect(rounds.first).to be_a(Round)
    end
  end

  describe ".decode" do
    it "converts letter representations to choices" do
      expect(NaiveStrategy.decode("A X")).to eq([:rock, :rock])
      expect(NaiveStrategy.decode("B Y")).to eq([:paper, :paper])
      expect(NaiveStrategy.decode("C Z")).to eq([:scissors, :scissors])
    end
  end
end
