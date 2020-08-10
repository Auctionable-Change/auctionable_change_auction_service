require 'faraday'

module FaradayConnection

  def make_post
    url = 'http://127.0.0.0:5000/items/winners'
    Faraday.post(url)
  end
end
