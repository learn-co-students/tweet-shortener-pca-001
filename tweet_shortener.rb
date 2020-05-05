require "pry"

def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(string)
  tweet_array = string.split(" ")
  dictionary.each do |key, value|
    tweet_array.each_with_index do |word, i|
      tweet_array[i] = value if word == key
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |e|
    tweet = word_substituter(e)
    puts tweet
  end
end

def selective_tweet_shortener(string)
  return word_substituter(string) if string.length > 140

  string
end

def shortened_tweet_truncator(string)
  return word_substituter(string)[1..137] + "..." if string.length > 140

  string
end
