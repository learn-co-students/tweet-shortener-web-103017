dictionary = {
  :hello => 'hi',
  :to => '2',
  :two => '2',
  :too => '2',
  :for => '4',
  :four => '4',
  :be => 'b',
  :you => 'u',
  :at => '@',
  :and => '&'
}

def word_substituter(tweet)
  dictionary = {
    :hello => 'hi',
    :to => '2',
    :two => '2',
    :too => '2',
    :for => '4',
    :four => '4',
    :be => 'b',
    :you => 'u',
    :at => '@',
    :and => '&'
  }

  keyz = dictionary.keys
  valz = dictionary.values

  array = tweet.split
  new_array = []

  array.each_with_index do |item, index|
    keyz.each_with_index do |key, index|
      if item.downcase == key.to_s
        item = dictionary[key]
      end
    end
    new_array << item
  end
  new_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  tweet[0..139]
end
