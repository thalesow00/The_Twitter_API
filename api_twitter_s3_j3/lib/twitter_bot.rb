require "twitter"
require "dotenv/load"

class TwitterBot
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
  end
end


#poster un tweet au journaliste 
class TwitterBot
  JOURNALISTS = ["@jcunniet", "@Aziliz31", "@ssoumier", "@marionsouzeau", "@gaellombart"]

  def tweet_hello
    JOURNALISTS.sample(5).each do |journalist|
      message = "Bonjour #{journalist} ! Merci pour votre travail. #hello_world"
      @client.update(message)
      puts "Tweet envoyé à #{journalist} ✅"
      sleep(5) # Évite d'être banni
    end
  end
end

#liker les tweets #hello world

#follow les comptes qui utilise #hello world

#activer les streaming live
class TwitterBot
  def stream_hello_world
    streaming_client = Twitter::Streaming::Client.new do |config|
      config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end

    streaming_client.filter(track: "#hello_world") do |tweet|
      @client.favorite(tweet)
      @client.follow(tweet.user)
      puts "✅ Action en live sur tweet de @#{tweet.user.screen_name}"
    end
  end
end
