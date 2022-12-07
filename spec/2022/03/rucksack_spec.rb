# frozen_string_literal: true

require "spec_helper"

RSpec.describe Rucksack do
  let(:rucksack) { Rucksack.new([%w[a B C], %w[d a b]]) }
  describe "#from_text" do
    it "puts items in the two compantments" do
      parsed_rucksack = Rucksack.from_text("aBCdab")
      expect(parsed_rucksack).to eq(rucksack)
    end
  end

  describe ".duplicate_item" do
    subject { rucksack.duplicate_item }

    it { is_expected.to be_an(Item) }
    it { is_expected.to eq("a") }
  end
end
