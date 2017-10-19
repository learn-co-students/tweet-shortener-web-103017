
def dictionary
   dictionary = {"hello" => 'hi',
              "to" => '2',
              "two" => '2',
              "too" => '2',
              "for" => '4',
              "For" => '4',
              "four" => '4',
              "be" => 'b',
              "you" => 'u',
              "at" => '@',
              "and" => '&'
             }
end

def word_substituter(tweets)
  shortened = []
  tweets.split(' ').each do |tweet|
    if dictionary.keys.include?(tweet)
      shortened << dictionary[tweet]
    else
      shortened << tweet
    end
  end
  shortened.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length <= 140
    tweets
  else
    word_substituter(tweets)
  end
end

def shortened_tweet_truncator(tweets)
  tested_tweets = selective_tweet_shortener(tweets)
  if tested_tweets.length > 140
     tested_tweets[0..136] += "..."
  else
     tested_tweets
  end
end
