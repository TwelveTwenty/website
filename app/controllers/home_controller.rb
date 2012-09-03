class HomeController < ApplicationController

  require 'net/http'
  require 'uri'

  def index
    @blogs = Blog.where("draft != ?", true).order('created_at desc').all :limit => 2
    @goody = Goody.where("draft != ?", true).order('created_at desc').first

    unless Rails.cache.read(:tweets)

      # load json from twitter
      uri = URI('http://api.twitter.com/1/favorites.json?screen_name=twelve_20')
      response = Net::HTTP.get(uri)

      #parse json
      tweets = JSON.parse(response)

      #save to cache
      Rails.cache.write(:tweets, tweets, :time_to_idle => 5.seconds, :expires_in => 1.hour)

      logger.debug "Fetch new tweets."
    end

    @tweets = Rails.cache.read(:tweets)

    unless @tweets.is_a? Array
      logger.error "Problem loading tweets: #{@tweets}"
    end

  end
end
