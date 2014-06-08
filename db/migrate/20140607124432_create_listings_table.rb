class CreateListingsTable < ActiveRecord::Migration
  def change
  	create_table :listings do |l|
  		l.string :title
  		l.string :url
  		l.string :address
  		l.string :bedrooms
  		l.string :bathrooms
      l.string :monthly_rent
  		l.integer :vote_num, default: 0
  		l.timestamps 
  	end
  end
end
