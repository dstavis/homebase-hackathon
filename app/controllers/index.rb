get '/' do
	# all_listings
	erb :index
end

post '/' do
	redirect '/'
end

post '/listings' do
	Listing.create(title: params[:title],
								 url: params[:url],
								 location: params[:location],
								 bedrooms: params[:bedrooms],
								 bathrooms: params[:bathrooms]
								 )
	redirect '/'
end

post '/listings/:id' do
	listing = Listing.find(params[:id])
	listing.vote_num += 1 if params[:upvote]
	listing.vote_num -= 1 if params[:downvote]
	listing.save
	redirect '/'
end

