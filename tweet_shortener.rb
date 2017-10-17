def dictionary
    {"hello" => "hi",
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
end

def word_substituter(tweet)
    tweet_array = tweet.split(" ")
    tweet_array.each_with_index do |word, index|
        dictionary.each do |key, value|
            if word.downcase == key
                tweet_array[index] = value
            end
        end
    end
    tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
    tweet_array.each do |tweet|
        puts word_substituter(tweet)
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
        word_substituter(tweet)
        "#{tweet[0...137]}..."
        else
        tweet
    end
end
