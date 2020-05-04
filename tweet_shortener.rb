# Write your code here.
def word_substituter(tweet)
    short_words = {
        "hello" => "hi",
        "to" => "2", "too" => "2", "two" => "2",
        "for" => "4", "four" => "4",
        "be" => "b", "you" => "u", "at" => "@", "and" => "&"
    }
    ans = tweet.split(" ").collect do |word|
        short_words.key?(word.downcase) ? short_words[word.downcase] : word
    end
    ans.join(" ")
end

def bulk_tweet_shortener(array)
    array.collect { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
    tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
    shorter = selective_tweet_shortener(tweet)
    shorter.length > 140 ? shorter[0..139] : shorter
end