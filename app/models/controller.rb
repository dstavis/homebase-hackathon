#Driver Code


#POST '/listings' ROUTE

#Instantiate a new API Model
#Pass the API Model a url, and receive a hash with the data of a listing
#Create a new AR Listing with the data, and save it to the DB

class Controller

  def self.start
    url = "http://sfbay.craigslist.org/sfc/apa/4508837513.html"
    kimono = KimonoController.new
    listing = kimono.get_listing_data(url)
    puts listing
  end

end