helpers do
  def em(text)
    "<em>#{text}</em>"
  end

  def all_listings
  	@listings = Listing.all
  end

end
