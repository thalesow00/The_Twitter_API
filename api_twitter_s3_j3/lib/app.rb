require 'dotenv/load'
Dotenv.load('.env')

# Récupération des variables d'environnement stockées dans le fichier .env
twitter_consumer_key = ENV['TWITTER_CONSUMER_KEY']
twitter_consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
twitter_access_token = ENV['TWITTER_ACCESS_TOKEN']
twitter_access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']

# Affichage pour vérifier si les variables sont bien chargées
puts "Consumer Key: #{twitter_consumer_key}"
puts "Consumer Secret: #{twitter_consumer_secret}"
puts "Access Token: #{twitter_access_token}"
puts "Access Token Secret: #{twitter_access_token_secret}"


# puts ENV['TWITTER_API_SECRET']

#Autre exemple

# puts ENV['BEST_WEBSITE_EVER']



require_relative "twitter_bot"

bot = TwitterBot.new
bot.tweet_hello
bot.like_hello_world
bot.follow_hello_world
bot.stream_hello_world
