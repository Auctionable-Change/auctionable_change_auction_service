require 'sinatra'
require 'sidekiq'
require 'sidekiq/api'
require 'sidekiq/web'
require './lib/workers/auction_worker.rb'

class AuctionService < Sinatra::Base
  post '/auction/:timestamp' do
    ts = params["timestamp"].to_i
    AuctionWorker.perform_at(ts)
  end
end
