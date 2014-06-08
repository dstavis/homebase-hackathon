helpers do
  def em(text)
    "<em>#{text}</em>"
  end

  def all_listings
  	@listings = Listing.all
  end
	
	def featured_listing
		max_count = Listing.maximum(:vote_num)
		@feature = Listing.find_by_vote_num(max_count)
	end

end
