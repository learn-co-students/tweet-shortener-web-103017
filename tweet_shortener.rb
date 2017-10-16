# Write your code here.
def dictionary
  dictionary = {
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
  }
end

def word_substituter(tweet_one)
  array = []
  tweet_one.split.each do |word|
    if dictionary.keys.include?(word.downcase)
       array << dictionary[word.downcase]
    else
       array << word
    end
  end
  array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet_one)
  if tweet_one.length > 140
    word_substituter(tweet_one)
  else
    tweet_one
  end
end


def shortened_tweet_truncator(tweet_one_short)
  tweet = word_substituter(tweet_one_short)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
