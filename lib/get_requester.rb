# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'


class GetRequester
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    
    x = URI.parse(url)
    response = Net::HTTP.get_response(x)
    response.body
    
  end
  
  def parse_json
    programs = JSON.parse(self.get_response_body)
    programs
  end  
    
  
end