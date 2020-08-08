require 'faraday'
require 'sidekiq'
require 'dotenv'
Dotenv.load('var.env')

Sidekiq.configure_server do |config|
  config.redis = { url: 'http://localhost:6379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'http://localhost:6379'  }
end

class AuctionWorker
  include Sidekiq::Worker

  def perform
    Faraday.post(ENV['URL'])
  end
end
