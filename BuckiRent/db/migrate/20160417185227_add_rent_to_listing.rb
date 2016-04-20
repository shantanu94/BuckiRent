 # Created by Griffin Solimini on 4/17/16 to add rent to the listing table

class AddRentToListing < ActiveRecord::Migration
  def change
    add_column :listings, :rent, :integer
  end
end
