# require_relative 'controller'

class View
  
# get user input 
  def self.user_input
    puts "What is your zip code?"
    user_zipcode = gets.chomp
    user_zipcode
  end

# output
  def self.pretty_print(theaters)

 theaters.each do |theater|
   puts "~~~~~~~~~~~~~~~~~~~~~\nTheater name: #{theater.name} \nLocation: #{theater.address1}\nWebsite: #{theater.url}"
 end
  end

end

#     puts <<~PRETTY
# oooooo   oooooo     oooo           oooo                                                  
#  `888.    `888.     .8'            `888                                                  
#   `888.   .8888.   .8'    .ooooo.   888   .ooooo.   .ooooo.  ooo. .oo.  .oo.    .ooooo.  
#    `888  .8'`888. .8'    d88' `88b  888  d88' `"Y8 d88' `88b `888P"Y88bP"Y88b  d88' `88b 
#     `888.8'  `888.8'     888ooo888  888  888       888   888  888   888   888  888ooo888 
#      `888'    `888'      888    .o  888  888   .o8 888   888  888   888   888  888    .o 
#       `8'      `8'       `Y8bod8P' o888o `Y8bod8P' `Y8bod8P' o888o o888o o888o `Y8bod8P'
# PRETTY

# 