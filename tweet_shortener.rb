=begin
"hello" becomes 'hi'
"to, two, too" become '2'
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@"
"and" becomes "&"
=end

def word_substituter(tweet)
  word_subs  = {

    hello: "Hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
  tweet_array = []
  tweet_array = tweet.split(' ')

  tweet_array.each do |word|
    if word_subs.has_key?(word.to_sym.downcase)
      itemIndex = tweet_array.index(word)
      tweet_array[itemIndex] = word_subs[word.to_sym.downcase]
    end
  end

  new_tweet = ""
  tweet_array.each do |item|
    new_tweet << "#{item} "
  end
  return new_tweet.strip
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
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
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
      #truncate
      shorter_tweet = short_tweet[0..140-4]<< "..."
      return shorter_tweet
    else
      return short_tweet
    end
  else
    return tweet
  end
end
