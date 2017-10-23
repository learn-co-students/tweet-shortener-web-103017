# Write your code here.
def dictionary

dictionary = {
        "hello" => "hi",
        "to" => "2",
        "too" => "2",
        "two" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end
def word_substituter(tweet_string)
    new_str = []
    dictionary_array = dictionary.keys #we get an array of keys of the dictionary hash, since we need to check the given arrays to the keys so the updated arrays occurs
    tweet_array = tweet_string.split(' ') #splits the string into seperate pieces to create an array
    tweet_array.each do |x|
        #Iterates through the created array to see if the tweet includes any of the keys that can be shortened
        #Then it says if the word (x.downcase) matches a key then push the value of the key to the new_str array, else just put the word x to the new_str array
        dictionary_array.include?(x.downcase) ? new_str.push(dictionary[x.downcase]) : new_str.push(x)
    end
    new_str.join(' ') #after the string is changed the new string array is set back to a regular string
end


def bulk_tweet_shortener (tweets)

    tweets.collect do |x|
        puts word_substituter(x)
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
    tweet = selective_tweet_shortener(tweet)
    if tweet.length > 140
        tweet[0..136] + "..."
    else

        tweet
    end
end
