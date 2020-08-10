require 'sidekiq'
require 'sidekiq-scheduler'
# require 'dotenv'
require './connection'
# Dotenv.load('var.env')


class AuctionWorker
  include Sidekiq::Worker
  include FaradayConnection

  def perform
    make_post
  end
end
