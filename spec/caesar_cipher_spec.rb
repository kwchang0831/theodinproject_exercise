# spec/caesar_cipher_sepc.rb

require "spec_helper"
require_relative "../lib/caesar_cipher"

RSpec.describe "#caesar_cipher" do
  it "works with a phrase with punctuation" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    expect(caesar_cipher("Hello, World!", 3)).to eq("Khoor, Zruog!")
  end

  it "shifts uppercase letters by specified shift value" do
    expect(caesar_cipher("ABC", 1)).to eq("BCD")
    expect(caesar_cipher("XYZ", 5)).to eq("CDE")
  end

  it "shifts lowercase letters by specified shift value" do
    expect(caesar_cipher("abc", 1)).to eq("bcd")
    expect(caesar_cipher("xyz", 5)).to eq("cde")
  end

  it "preserves non-alphabetic characters" do
    expect(caesar_cipher("123 456", 1)).to eq("123 456")
  end

  it "works with large shift values" do
    expect(caesar_cipher("abc", 26)).to eq("abc")  # Shifting by 26 should result in the same string
    expect(caesar_cipher("ABC", 27)).to eq("BCD")  # Shifting by 27 is equivalent to shifting by 1
  end

  it "works with negative shift values" do
    expect(caesar_cipher("def", -1)).to eq("cde")
    expect(caesar_cipher("ABC", -2)).to eq("YZA")
  end
end
