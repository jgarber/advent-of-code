# frozen_string_literal: true

require "spec_helper"

RSpec.describe AssignmentPair do
  describe ".from_text" do
    subject { AssignmentPair.from_text("2-4,6-8") }
    it { is_expected.to be_an(AssignmentPair) }
    it { is_expected.to eq([2..4, 6..8]) }
  end

  describe "#fully_overlapping?" do
    def self.test_overlap(pair, expected)
      it "returns #{expected} for the pair #{pair}" do
        expect(AssignmentPair.new(pair).fully_overlapping?).to eq(expected)
      end
    end

    test_overlap [2..8, 3..7], true
    test_overlap [3..7, 2..8], true
    test_overlap [6..6, 4..6], true
    test_overlap [2..4, 6..8], false
    test_overlap [2..6, 4..8], false
  end

  describe "#partially_overlapping?" do
    def self.test_overlap(pair, expected)
      it "returns #{expected} for the pair #{pair}" do
        expect(AssignmentPair.new(pair).overlapping?).to eq(expected)
      end
    end

    test_overlap [2..8, 3..7], true
    test_overlap [3..7, 2..8], true
    test_overlap [6..6, 4..6], true
    test_overlap [2..4, 6..8], false
    test_overlap [2..6, 4..8], true
    test_overlap [4..8, 2..6], true
  end
end
