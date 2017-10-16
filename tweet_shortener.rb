# Write your code here.
require 'pry'
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "Hello" => "Hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "B",
    "You" => "U",
    "At" => "@",
    "And" => "&"
  }
end

def word_substituter(tweet)
  t_a = tweet.split(" ")
  t_a.map! do |element|
    dictionary.each do |k, v|
      if element == k
        element = v
      end
    end
    element
  end
  t_a.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet)
  if short.length > 140
    new_s = short[1..137] + "..."
  else
    short
  end
end
