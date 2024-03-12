require "spec_helper"
require_relative "../lib/bubble_sort"

RSpec.describe "#bubble_sort" do
  it "sort array of integers" do
    expect(bubble_sort([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 3, 6, 6, 8, 9, 10, 15, 17])
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
    expect(bubble_sort([5, 4, 3, 2, 1, 0])).to eq([0, 1, 2, 3, 4, 5])
  end

  it "sort a sorted array" do
    expect(bubble_sort([0, 2, 2, 3, 4, 78])).to eq([0, 2, 2, 3, 4, 78])
  end
  it "sort an array with same number" do
    expect(bubble_sort([2, 2, 2, 2, 2, 2])).to eq([2, 2, 2, 2, 2, 2])
  end

  it "sort an empty array" do
    expect(bubble_sort([])).to eq([])
  end

  it "does not modify the original array" do
    original_array = [5, 3, 8, 2, 9]
    sorted_array = bubble_sort(original_array)
    expect(original_array).to eq([5, 3, 8, 2, 9])
  end
end
