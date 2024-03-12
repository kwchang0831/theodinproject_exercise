require "spec_helper"
require_relative "../lib/substrings"

describe "#substrings" do
  let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

  it "returns a hash listing each substring found in the original string and its frequency" do
    expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it "is case insensitive" do
    expect(substrings("BeLoW", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it "returns an empty hash if no substrings are found" do
    expect(substrings("hello", dictionary)).to eq({})
  end

  it "handles empty string input" do
    expect(substrings("", dictionary)).to eq({})
  end

  it "handles empty dictionary" do
    expect(substrings("below", [])).to eq({})
  end

  it "handles multiple words" do
    expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
  end
end
