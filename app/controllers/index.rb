get '/' do
	# all_listings
	erb :index
end

post '/' do
	redirect '/'
end

post '/listings' do
	listing = Listing.create(title: params[:title],
		url: params[:url])
	all_listings = Kimono.get_data
	all_listings[listing.id]
	listing.update_attributes(all_listings[listing.id])
	redirect '/'
end

post '/listings/:id' do
	listing = Listing.find(params[:id])
	listing.vote_num += 1 if params[:upvote]
	listing.vote_num -= 1 if params[:downvote]
	listing.save
	redirect '/'
end

