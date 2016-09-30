require 'open-uri'
require 'json'
require_relative 'theater'
require_relative 'view'

require 'pry'

THEATER_BASE_URL =  "https://data.cityofnewyork.us/resource/2hzz-95k8.json"
PARK_BASE_URL = "https://data.cityofnewyork.us/resource/y6ja-fw4f.json"
QUERY_STRING = '?zip=' + View.user_input

class Controller
  attr_accessor :theaters :parks

  def initialize
      @theaters = []
      @parks = []
  end



def run

  theater_string_response = open(THEATER_BASE_URL + QUERY_STRING).read
  theater_hash_response = JSON.parse(theater_string_response) 
  theater_hash_response.each do | theater |
      @theaters << Theater.new(theater)
  end
View.pretty_print(theaters)
end
end


controller = Controller.new
controller.run

