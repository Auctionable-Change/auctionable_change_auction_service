require 'sidekiq'
require 'sidekiq-scheduler'
require 'faraday'
require 'dotenv'
Dotenv.load('var.env')


class AuctionWorker
  include Sidekiq::Worker

  def perform
    url = 'http://127.0.0.0:5000/items/winners'
    response = Faraday.post(url)
    puts response.body
  end
end
