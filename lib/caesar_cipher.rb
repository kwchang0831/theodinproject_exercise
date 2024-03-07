CHARS = [*"A".."Z"], [*"a".."z"]

def caesar_cipher(inputStr, shift)
  shift_mapping = CHARS.map { |ar| ar.rotate(shift) }
  inputStr.tr(CHARS.join, shift_mapping.join)
end
