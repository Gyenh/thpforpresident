class TwitterBot

  def initialize
    require 'dotenv'
    Dotenv.load

    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_API_KEY"]
      config.consumer_secret     = ENV["TWITTER_API_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
  end

  def perform
    @client.update("#Etudiant en #informatique ? Apprenez à créer un site #web en 3 mois gratuitement. Rends toi sur ce lien : https://thpforpresident.herokuapp.com/landing2")
  end
end