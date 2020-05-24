require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
   def initialize(url)
     @url = url
   end

   def get_response_body
     uri = URI.parse(URL)
     response = Net::HTTP.get_response(uri)
     response.body
   end

   def parse_json
  programs = JSON.parse(self.get_response_body)
 end
end
#programs = GetRequester.new
#puts programs.parse_json.uniq
