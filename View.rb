# require_relative 'controller'

class View
  
# get user input 
  def self.user_input
puts <<-FOO
oooooo   oooooo     oooo           oooo                                                           .                 
 `888.    `888.     .8'            `888                                                         .o8                 
  `888.   .8888.   .8'    .ooooo.   888   .ooooo.   .ooooo.  ooo. .oo.  .oo.    .ooooo.       .o888oo  .ooooo.      
   `888  .8'`888. .8'    d88' `88b  888  d88' `"Y8 d88' `88b `888P"Y88bP"Y88b  d88' `88b        888   d88' `88b     
    `888.8'  `888.8'     888ooo888  888  888       888   888  888   888   888  888ooo888        888   888   888 o8o 
     `888'    `888'      888    .o  888  888   .o8 888   888  888   888   888  888    .o        888 . 888   888 `"' 
      `8'      `8'       `Y8bod8P' o888o `Y8bod8P' `Y8bod8P' o888o o888o o888o `Y8bod8P'        "888" `Y8bod8P' o8o 
                                                                                                                `"' 
			oooooooooo.    .oooooo.   ooooooooo.   oooooooooooo oooooooooo.   .o. 
			`888'   `Y8b  d8P'  `Y8b  `888   `Y88. `888'     `8 `888'   `Y8b  888 
			 888     888 888      888  888   .d88'  888          888      888 888 
			 888oooo888' 888      888  888ooo88P'   888oooo8     888      888 Y8P 
			 888    `88b 888      888  888`88b.     888    "     888      888 `8' 
			 888    .88P `88b    d88'  888  `88b.   888       o  888     d88' .o. 
			o888bood8P'   `Y8bood8P'  o888o  o888o o888ooooood8 o888bood8P'   Y8P   

ooooo ooooo      ooo      ooooooooooooo ooooo   ooooo oooooooooooo        .oooooo.   ooooo ooooooooooooo oooooo   oooo 
`888' `888b.     `8'      8'   888   `8 `888'   `888' `888'     `8       d8P'  `Y8b  `888' 8'   888   `8  `888.   .8'  
 888   8 `88b.    8            888       888     888   888              888           888       888        `888. .8'   
 888   8   `88b.  8            888       888ooooo888   888oooo8         888           888       888         `888.8'    
 888   8     `88b.8            888       888     888   888    "         888           888       888          `888'     
 888   8       `888            888       888     888   888       o      `88b    ooo   888       888           888      
o888o o8o        `8           o888o     o888o   o888o o888ooooood8       `Y8bood8P'  o888o     o888o         o888o     
                                                                                                                       
FOO

    puts "What is your zip code?"
    user_zipcode = gets.chomp
    user_zipcode
  end

# output
  def self.pretty_print(theaters)
	puts "How about a Theater? CULTURE YO'SELF"
 theaters.each do |theater|
		puts "~~~~~~~~~~~~~~~~~~~~~\n--#{theater.name}--\nLocation: #{theater.address1}\nWebsite: #{theater.url}"
 end
end
  def self.pretty_print2(galleries)
  puts "\n\n\nOr why don't you go get yo'self some ART"
 galleries.each do |gallery|
 	puts "~~~~~~~~~~~~~~~~~~~~~\nGallery name: #{gallery.name} \nLocation: #{gallery.address1}\nWebsite: #{gallery.url}"
 end
  end

end

#     puts 
# oooooo   oooooo     oooo           oooo\n                                                  
#  `888.    `888.     .8'            `888\n                                                  
#   `888.   .8888.   .8'    .ooooo.   888   .ooooo.   .ooooo.  ooo. .oo.  .oo.    .ooooo.\n  
#    `888  .8'`888. .8'    d88' `88b  888  d88' `"Y8 d88' `88b `888P"Y88bP"Y88b  d88' `88b\n 
#     `888.8'  `888.8'     888ooo888  888  888       888   888  888   888   888  888ooo888\n 
#      `888'    `888'      888    .o  888  888   .o8 888   888  888   888   888  888    .o\n 
#       `8'      `8'       `Y8bod8P' o888o `Y8bod8P' `Y8bod8P' o888o o888o o888o `Y8bod8P'\n
# PRETTY

# 