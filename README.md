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

## [Stock Picker](lib/stock_picker.rb)

Implement a method [#stock_picker](https://www.theodinproject.com/lessons/ruby-stock-picker) that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

```irb
stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
```

## [Bubble Sort](lib/bubble_sort.rb)

Build a method [#bubble_sort](https://www.theodinproject.com/lessons/ruby-bubble-sort) that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

```irb
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```
