require 'spec_helper'

RSpec.describe Elf do
  context "when ititialized with an array of FoodItems" do
    let(:elf) { Elf.new([FoodItem.new(100), FoodItem.new(200)]) }

    it "has a total of calories carried" do
      expect(elf.calories_carried).to eq(300)
    end
  end
end