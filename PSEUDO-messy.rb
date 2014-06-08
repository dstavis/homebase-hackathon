
=begin








__FEATURE LIST MASTER__



	
	* Consolidate housing options
	* - user provides a link. back-end pull info out and 
	populate to DB ---kimonoAPI ---Nokogiri---

	*- Feedback from group
		- up/down vote




******************************************

CONSOLIDATE
	- front end list
	- get data provided by link
	- populate db
	- 

VOTES
	-up/vote



******************************************
	
	FRONT_END

		-can post links in a form
		-can up-vote

	BACK_END

		- extract data from links populate db
		- listings table

******************************************

	TECH

		- Sinatra
		- JavaScript
		- skeleton / initializer
		- Kimono 



******************************************

TEAMS

-FRONT END
	-initilzer / css  

-Back-end 


******************************************
PSEUDO

vertical slice ? Heroku

DB - Tables 
	links
		string :link
		integer :votes
		Kimono Reqs


View 1 team view 
	-expandable  to better views with kimono outputs
	-wireframe

Model 1 link 
	validations
	votes counter


__STRETCH__

	 populate g-map with listing locations in a clickable format

	 attracting roommates 
	 	- invitation 
	 	- postable link
		-find good listings
		- disscusion / comments
		- pitch the house


		*- profile pages

			- sub form groups based on shared prefs.








*******************************************
UP/DOWN PSEUDO


post '/listings/:id/update_vote_count' do
	find :id
	vote_num += 1
	redirect '/'
end



order_by_chornilogical --> before listing_views.

implement featured listing based on most votes -
chronological there after

find_by_vote.max
list.each.inverse.????

*******************************************
Styling

form on left 1/3
listings on right 2/3's



























******************************************
INITIAL PSEUDO
******************************************


make groups of ppl to live with

as you find leads push them into a list of same format
	-airbnb
	-cl
	-ur mom
	-local leads

- has all important info in same format

- user in group can upload down-vote locations

- attracting roommates from home base community

-consolidate the options available in one place

-track listings you have viewed

- ability to remove a listing from your population

- comments for posts 

- feedback from house mates on listings within group


- narrow search parameters based on individual needs

- profile includes
	-rent max
	-location
	-room situation pref
	-move in 
	-move out
	-description


- form groups based on shared pref






__BEFORE TIME__

you only have one group / once your in a group
cant be in another group

supports good living together behavior





=end