require "spec_helper"

RSpec.describe Round do
  context "when round is incomplete" do
    it "raises an exception" do
      expect { Round.new(nil, nil) }.to raise_error(ArgumentError)
      expect { Round.new(:rock, nil) }.to raise_error(ArgumentError)
      expect { Round.new(nil, :rock) }.to raise_error(ArgumentError)
      expect { Round.new(:turtle, :rock) }.to raise_error(ArgumentError)
      expect { Round.new(nil, :hotel) }.to raise_error(ArgumentError)
    end
  end

  describe "#outcome" do
    it "recognizes when we win" do
      expect(Round.new(:scissors, :rock).outcome).to eq(:win)
      expect(Round.new(:paper, :scissors).outcome).to eq(:win)
      expect(Round.new(:rock, :paper).outcome).to eq(:win)
    end

    it "recognizes when we lose" do
      expect(Round.new(:rock, :scissors).outcome).to eq(:lose)
      expect(Round.new(:scissors, :paper).outcome).to eq(:lose)
      expect(Round.new(:paper, :rock).outcome).to eq(:lose)
    end

    it "recognizes a draw" do
      expect(Round.new(:rock, :rock).outcome).to eq(:draw)
      expect(Round.new(:scissors, :scissors).outcome).to eq(:draw)
      expect(Round.new(:paper, :paper).outcome).to eq(:draw)
    end
  end

  describe "#our_choice_score" do
    it "returns points based on our choice" do
      expect(Round.new(:rock, :rock).our_choice_score).to eq(1)
      expect(Round.new(:paper, :paper).our_choice_score).to eq(2)
      expect(Round.new(:scissors, :scissors).our_choice_score).to eq(3)
    end
  end

  describe "#our_outcome_score" do
    it "returns points based on our outcome" do
      expect(Round.new(:scissors, :rock).our_outcome_score).to eq(6)
      expect(Round.new(:scissors, :paper).our_outcome_score).to eq(0)
      expect(Round.new(:scissors, :scissors).our_outcome_score).to eq(3)
    end
  end

  describe "#score" do
    it "combines the choice and outcome scores" do
      expect(Round.new(:scissors, :rock).score).to eq(7)
      expect(Round.new(:scissors, :paper).score).to eq(2)
      expect(Round.new(:scissors, :scissors).score).to eq(6)
    end
  end

  describe "#==" do
    it "returns true if both choices are equal" do
      expect(Round.new(:scissors, :rock)).to eq(Round.new(:scissors, :rock))
    end

    it "returns false otherwise" do
      expect(Round.new(:scissors, :rock)).to_not eq(Round.new(:rock, :scissors))
    end
  end
end
