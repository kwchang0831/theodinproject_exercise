# [TheOdinProject](https://www.theodinproject.com/) Excercise : Ruby

## to Test

Install RSpec

```shell
gem install rspec
```

Run Tests

```shell
rspec
```

## [Caesar Cipher](lib/caesar_cipher.rb)

Implement a method [#caesar cipher](https://www.theodinproject.com/lessons/ruby-caesar-cipher) that takes in a string and the shift factor and then outputs the modified string:

```irb
caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
```

## [Substrings](lib/substrings.rb)

Implement a method [#substrings](https://www.theodinproject.com/lessons/ruby-sub-strings) that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```irb
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }
```

Next, make sure your method can handle multiple words:

```irb
substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```
