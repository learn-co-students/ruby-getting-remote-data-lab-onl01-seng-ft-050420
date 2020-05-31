require 'net/http'

class GetRequester

  attr_accessor :url
  
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    res = Net::HTTP.get(uri)
   
    end
  
  def parse_json
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

end 