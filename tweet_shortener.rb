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
    'and' => '&'
  }
end

def word_substituter(tweet_string)
  words = tweet_string.split(/(\W)/)
  words = words.map do |word|
    dictionary.each do |key, val|
      
      if word.downcase == key
        word = val
        # binding.pry
      end
    # binding.pry
    end
    word
  end
  # binding.pry
  words.join
end

def bulk_tweet_shortener(tweet_array)
  tweet_array = tweet_array.map do |tweet_string|
    result = word_substituter(tweet_string)
    puts result
  end
end
  