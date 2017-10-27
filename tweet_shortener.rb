require 'pry'

DICTIONARY = {
  "hello" => "hi",
  "to" =>  "2",
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



def word_substituter(tweet)
  arr1 = tweet.split(' ')

  new_tweet_words = []
  arr1.each do |word|
    if DICTIONARY[word]
      new_tweet_words << DICTIONARY[word]
    else
      new_tweet_words << word
    end
  end
  new_tweet_words.join(' ')
end


def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet) }
end


def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)

  if short_tweet.length > 140
    "#{tweet[1...138]}..."
  else
    short_tweet
  end
end
