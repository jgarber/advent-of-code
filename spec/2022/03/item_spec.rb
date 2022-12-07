# frozen_string_literal: true

require "spec_helper"

RSpec.describe Item do
  describe "#value" do
    def self.test_value(letter, value)
      it "values #{letter} at #{value}" do
        expect(Item.new(letter).value).to eq(value)
      end
    end

    test_value "a", 1
    test_value "z", 26
    test_value "A", 27
    test_value "Z", 52
  end
end
