require "rest-client"
require "JSON"
require "pp"
#Driver Code


#POST '/listings' ROUTE

#Instantiate a new API Model
#Pass the API Model a url, and receive a hash with the data of a listing
#Create a new AR Listing with the data, and save it to the DB

class Controller
	attr_reader :address, :monthly_rent, :bathrooms, :bedrooms

  USER_KEY = "c4ef988e1794740430b4c3f674963022"
  API_ID = "craigslist" 

# input: API ID, user_key, urls(array of strings)
# output: JSON object indicating success of failure... should return the craigs list API as a JSON object
  def set_crawl_url #(url,user_key=USER_KEY, api_id=API_ID)
  	response = RestClient.post 'http://www.kimonolabs.com/api/ckbyl174/update', '-d', {apikey: "c4ef988e1794740430b4c3f674963022", urls["http://sfbay.craigslist.org/nby/apa/4509636565.html"]}.to_json


  end
# input: API ID, API key
# output: JSON object indicating success of failure... should return the craigs list API as a JSON object
  def start_crawl #(user_key=USER_KEY, api_id=API_ID)
  	response = RestClient.post 'http://www.kimonolabs.com/api/ckbyl174/startcrawl', '-d', {apikey: "c4ef988e1794740430b4c3f674963022"}.to_json

  end

  def return_listing
  	response = RestClient.get 'http://www.kimonolabs.com/api/ckbyl174?apikey=c4ef988e1794740430b4c3f674963022'
  	response_hash = JSON.parse(response)
	crazy_hash = response_hash["results"]["collection1"].first
  	  @address = crazy_hash["address"]
	  @monthly_rent = crazy_hash["monthly_rent"].split(" ")[0]
	  @bedrooms = crazy_hash["bedrooms"]
	  @bathrooms = crazy_hash["bathrooms"]
  end


end

listing = Controller.new
listing.return_listing
p listing.address
p listing.bedrooms
p listing.bathrooms
p listing.monthly_rent

# listing.set_crawl_url
listing.start_crawl