require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  @URL = ""
  def initialize(url)
    @URL = url 
  end
  def parse_json
    JSON.parse(get_response_body)
  end
  def get_response_body
    response = Net::HTTP.get_response(URI.parse(@URL))
    response.body
  end 
end 