def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end



def word_substituter(tweet)
  new_tweet = []
  tweet.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary.values_at(word.downcase)
    end
    new_tweet << word
  end
  new_tweet.join(" ")
end



def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}

end



def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end

  tweet
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length < 140
    return selective_tweet_shortener(tweet)
  else
    return (selective_tweet_shortener(tweet)[0..135] << " ...")
  end
end
