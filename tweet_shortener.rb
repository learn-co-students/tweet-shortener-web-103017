require 'pry'

def dictionary
  hash =
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  hash
end


def word_substituter(tweet)
  dic = dictionary
  tweet_array = tweet.split
  output = []
  tweet_array.each do |word|
    if dic.include?(word)
      output << dic[word]
    else
      output << word
    end
  end
  output.join(" ")
end

tweet_array = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
 "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
 "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!",
 "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag",
 "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."]

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  output = ""
  if tweet.length > 140
    output = word_substituter(tweet)
  else
    output = tweet[0..140]
  end
  output
end

def shortened_tweet_truncator(tweet)
  output = ""
  if tweet.length > 140
    output = word_substituter(tweet)
    if output.length > 140
      output = output[0..136] + "..."
    else output
    end
  else
    output = tweet[0..140]
  end
  output
end

#bulk_tweet_shortener(tweet_array)

# Write your code here.
