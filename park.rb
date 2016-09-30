class Gallery
  attr_reader :name, :address1, :city, :url, :zip


  def initialize(args ={})
    @address1 = args.fetch("address1", " ")
    @city = args.fetch("city", ' ')
    @name = args.fetch("name", ' ')
    @url = args.fetch("url" , " ")
    @zip  = args.fetch("zip", " ")

  end

end