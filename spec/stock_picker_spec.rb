require "spec_helper"
require_relative "../lib/stock_picker"

RSpec.describe "#stock_picker" do
  context "when prices are provided" do
    it "the best pair of buy and sell days" do
      expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    end
    it "the first day is the highest price" do
      expect(stock_picker([7, 5, 3, 1])).to eq([0, 0])
    end

    it "the last day is the highest price" do
      expect(stock_picker([1, 3, 5, 7])).to eq([0, 3])
    end

    it "the first day and last day is the highest price" do
      expect(stock_picker([7, 3, 5, 7])).to eq([1, 3])
    end

    it "price is not changing" do
      expect(stock_picker([1, 1, 1, 1])).to eq([0, 0])
    end
  end

  context "when prices are empty" do
    it "the best pair of buy and sell days" do
      expect(stock_picker([])).to eq([0,0])
    end
  end
end
