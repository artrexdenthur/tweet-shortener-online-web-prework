# Write your code here.
require 'pry'

def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '7'
  }
end

def word_substituter(tweet_string)
  tweet_string = tweet_string.split(/(\W)/).each do |word|
    dictionary.map do |key, val|
      # binding.pry
      if word == key
        word = val
      end
    end
  end
  tweet_string.join
end