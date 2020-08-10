require 'sidekiq'
require 'sidekiq-scheduler'


class AuctionWorker
  include Sidekiq::Worker

  def perform
    puts 'Hello World!'
  end
end
