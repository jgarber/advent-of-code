require 'spec_helper'

RSpec.describe Tournament do
  describe "#from_data" do
    it "passes the data to each round" do
      expect(Round).to receive(:from_text).with("A X")
      expect(Round).to receive(:from_text).with("B Y")
      Tournament.from_data(["A X", "B Y"])
    end
  end

  describe "#total_score" do
    let(:tournament) {}
    let(:round1) { instance_double("Round") }
    let(:round2) { instance_double("Round") }
    it "sums the rounds' scores" do
      allow(round1).to receive(:score).and_return(2)
      allow(round2).to receive(:score).and_return(3)
      tournament = Tournament.new([round1, round2])
      expect(tournament.total_score).to eq(5)
    end
  end
end