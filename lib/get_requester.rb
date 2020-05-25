# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  attr_accessor :url
  def initialize(url)
    @url =url
  end
  
  def get_response_body
    uri =URI.parse(@url)
    result =Net::HTTP.get_response(uri)
    result.body
  end
  
  def parse_json
    parsejson =JSON.parse(self.get_response_body)
  end
end