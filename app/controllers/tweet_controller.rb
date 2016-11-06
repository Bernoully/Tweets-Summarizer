require 'twitter'

class TweetController < ApplicationController
  @@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
  end

  def index
    @tweets = @@client.home_timeline(count: 100)
  end
end