require 'pry'
def dictionary word
  substitutions = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  substitutions[word.downcase] || word
end

def word_substituter string
  arr = string.split

  arr.map {|word| dictionary word}.join(" ")
end

def bulk_tweet_shortener tweets
  tweets.each{ |tweet| puts tweet = (word_substituter tweet)}
end


def selective_tweet_shortener tweet
  tweet = word_substituter tweet  if tweet.length > 140
  tweet
end

def shortened_tweet_truncator tweet
  tweet = tweet[0,140] if tweet.length > 140
  tweet
end

def final_bulk_tweet_shortener tweets
  tweets.each{|tweet| puts shortened_tweet_truncator selective_tweet_shortener tweet}
end