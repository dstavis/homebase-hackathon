get '/' do
	# all_listings
	erb :index
end

post '/' do
	redirect '/'
end

post '/listings' do
	listing = Listing.create(title: params[:title])
	all_listings = Kimono.get_data
	all_listings[listing.id]
	binding.pry

	redirect '/'
end

post '/listings/:id' do
	listing = Listing.find(params[:id])
	listing.vote_num += 1 if params[:upvote]
	listing.vote_num -= 1 if params[:downvote]
	listing.save
	redirect '/'
end

