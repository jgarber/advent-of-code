# frozen_string_literal: true
require 'spec_helper'

RSpec.describe ElfStrategy do
  describe ".decode" do
    it "converts first letter code to the opponent's choice" do
      expect(ElfStrategy.decode("A X").first).to eq(:rock)
      expect(ElfStrategy.decode("B Y").first).to eq(:paper)
      expect(ElfStrategy.decode("C Z").first).to eq(:scissors)
    end

    context "when the strategy is to lose the round" do
      it "converts second letter to our choice" do
        expect(ElfStrategy.decode("A X").last).to eq(:scissors)
        expect(ElfStrategy.decode("B X").last).to eq(:rock)
        expect(ElfStrategy.decode("C X").last).to eq(:paper)
      end
    end

    context "when the strategy is to tie the round" do
      it "converts second letter to our choice" do
        expect(ElfStrategy.decode("A Y").last).to eq(:rock)
        expect(ElfStrategy.decode("B Y").last).to eq(:paper)
        expect(ElfStrategy.decode("C Y").last).to eq(:scissors)
      end
    end

    context "when the strategy is to win the round" do
      it "converts second letter to our choice" do
        expect(ElfStrategy.decode("A Z").last).to eq(:paper)
        expect(ElfStrategy.decode("B Z").last).to eq(:scissors)
        expect(ElfStrategy.decode("C Z").last).to eq(:rock)
      end
    end
  end
end