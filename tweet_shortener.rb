# Write your code here.
def dictionary
  dictionary = {"hello"=>'hi', "to"=>'2', "two"=>'2', "too"=>'2', "for"=>'4', "four"=>'4', 'be'=>'b', 'you'=>'u', "at"=>"@", "and"=>"&"}
end

def word_substituter(tweet)
  arr = tweet.split(" ")
    arr.each_with_index do |word,index|
        if dictionary[word.downcase] != nil
            arr[index] = dictionary[word.downcase]
        end
    end
    arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |each_tweet|
    puts word_substituter(each_tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
     "#{tweet[0...137]}..."
  else
     tweet
 end
end
