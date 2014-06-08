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
	p params
	p "yayyy" if params[:upvote]
	p "noooo" if params[:downvote]

	listing = Listing.find(params[:id])
	listing.vote_num += 1 if params[:upvote]
	listing.vote_num -= 1 if params[:downvote]
	listing.save
	p Listing.find(params[:id])
	redirect '/'
end

