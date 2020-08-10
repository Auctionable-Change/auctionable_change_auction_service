require 'sidekiq'
require 'sidekiq-scheduler'
require './connection'

class AuctionWorker
  include Sidekiq::Worker
  include FaradayConnection

  def perform
    make_post
  end
end
