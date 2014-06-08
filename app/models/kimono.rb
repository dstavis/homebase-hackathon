require 'rest-client'
require 'JSON'

class Kimono

  def self.get_data
    binding.pry
    response = RestClient.get 'http://www.kimonolabs.com/api/ckbyl174?apikey=c4ef988e1794740430b4c3f674963022'
    response_hash = JSON.parse(response)
    listings = Kimono.populate_listings(response_hash)
    return listings
  end

private

  def self.populate_listings(response)
    listings = []
    @@response.each do |listing|
      listings.push({
        address: listing["address"],
        monthly_rent: listing["monthly_rent"],
        bedrooms: listing["bedrooms"],
        bathrooms: listing["bathrooms"]
      })
    end
    return listings
  end

  @@response = [{
    "monthly_rent" => "$5500",
    "address" => "25th Avenue at ocean avenue",
    "bedrooms" => "4",
    "bathrooms" => "3"
  },
  {
    "monthly_rent" => "$2800",
    "address" => "7560 nw grubstake way",
    "bedrooms" => "4",
    "bathrooms" => "3"
  },
  {
    "monthly_rent" => "$3545",
    "address" => "690 Alvarado St",
    "bedrooms" => "2",
    "bathrooms" => "1"
  },
  {
    "monthly_rent" => "$3400",
    "address" => "Jones Street at Greenwich Street",
    "bedrooms" => "1",
    "bathrooms" => "1"
  },
  {
    "monthly_rent" => "$3780",
    "address" => "3542 Broderick St",
    "bedrooms" => "2",
    "bathrooms" => "1"
  },
  {
    "monthly_rent" => "$3099",
    "address" => "559 Minna Street",
    "bedrooms" => "2",
    "bathrooms" => "2"
  },
  {
    "monthly_rent" => "$6000",
    "address" => "Duncan at Castro",
    "bedrooms" => "3",
    "bathrooms" => "1"
  },
  {
    "monthly_rent" => "$11900",
    "address" => "Glover Street at Jones Street",
    "bedrooms" => "5",
    "bathrooms" => "4.5"
  }]


end