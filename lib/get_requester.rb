# Write your code here
require 'open-uri'
require 'json'
require 'net/http'
require_relative 'irb'

class GetRequester 
    attr_reader :URL
    def initialize(url)
        @URL = url
    end

    def get_response_body
        uri = URI.parse(@URL)
        http_response = Net::HTTP.get_response(uri)
        http_response.body
    end

    def parse_json
        data = JSON.parse(self.get_response_body)
        return data

    end

end
