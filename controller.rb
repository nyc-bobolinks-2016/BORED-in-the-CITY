require 'open-uri'
require 'json'
require_relative 'theater'
require_relative 'gallery'
require_relative 'view'

require 'pry'

THEATER_BASE_URL =  "https://data.cityofnewyork.us/resource/2hzz-95k8.json"
GALLERY_BASE_URL = "https://data.cityofnewyork.us/resource/43hw-uvdj.json"
QUERY_STRING = '?zip=' + View.user_input

class Controller
  attr_accessor :theaters, :galleries

  def initialize
      @theaters = []
      @galleries = []
  end



def run

  self.find_theaters
  self.find_galleries

end

def find_theaters
  theater_string_response = open(THEATER_BASE_URL + QUERY_STRING).read
  theater_hash_response = JSON.parse(theater_string_response) 
  theater_hash_response.each do | theater |
      @theaters << Theater.new(theater)
  end
View.pretty_print(theaters)
end

def find_galleries
  gallery_string_response = open(GALLERY_BASE_URL + QUERY_STRING).read
  gallery_hash_response = JSON.parse(gallery_string_response) 
  gallery_hash_response.each do | gallery |
      @galleries << Gallery.new(gallery)
  end
View.pretty_print2(galleries)
end

end

controller = Controller.new
controller.run
