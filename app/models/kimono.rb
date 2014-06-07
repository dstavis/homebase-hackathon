class KimonoController

  def initialize
    @api = CraigslistAPI.new

    @example_data = {
      address: "4th and Bryant",
      bedrooms: "3",
      bathrooms: "1.5",
      rent: "1000"
    }
  end

  def get_data_from_url(url)
  #A better design is to call "listing.new(url)" and have the listing talk to kimono to get to the right API and return the data it wants

    return @example_data
  end

  private

  def set_page_url(url)
    curl --data "param1=value1&param2=value2" http://example.com/resource.cgi
  end

  def crawl_page

  end

  def get_collection
    
  end

end