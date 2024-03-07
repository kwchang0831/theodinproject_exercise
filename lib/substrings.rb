def substrings(inputStr, dictionary)
  frequencies = Hash.new(0)
  dictionary.each do |substring|
    count = inputStr.downcase.scan(substring).length
    frequencies[substring] += count if count > 0
  end
  frequencies
end
