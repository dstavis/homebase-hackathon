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

put '/listings/:id' do

end