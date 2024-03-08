# Solution #1
CHARS = [*"A".."Z"], [*"a".."z"]
CHARS_MAPPING = CHARS.join

def caesar_cipher(inputStr, shift)
  shift_mapping = CHARS.map { |ar| ar.rotate(shift) }
  inputStr.tr(CHARS_MAPPING, shift_mapping.join)
end

# # Solution #2
# def caesar_cipher2(inputStr, shift)
#   result = ""
#   inputStr.each_byte do |char|
#     if char.between?(65, 90) # Uppercase letters
#       result << (((char - 65 + shift) % 26) + 65).chr
#     elsif char.between?(97, 122) # Lowercase letters
#       result << (((char - 97 + shift) % 26) + 97).chr
#     else
#       result << char.chr
#     end
#   end
#   result
# end

# # Benchmark
# require "benchmark"
# # Input string
# input = "What a string!"
# # Benchmarking
# Benchmark.bm(10) do |x|
#   x.report("caesar_cipher") { 1000000.times { caesar_cipher(input, 5) } }
#   x.report("caesar_cipher2") { 1000000.times { caesar_cipher2(input, 5) } }
# end
