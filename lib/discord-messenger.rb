require 'json'
require 'net/http'

class Discord
  attr_reader :webhook_url

  def initialize(webhook_url)
    @webhook_url = webhook_url
  end

  def send_message(message)
    uri = URI.parse(webhook_url)
    request = Net::HTTP::Post.new(uri)
    request.content_type = 'application/json'
    request.body = JSON.dump({ "content": message })

    req_options = {
      use_ssl: uri.scheme == 'https'
    }

    Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end
  end
end
