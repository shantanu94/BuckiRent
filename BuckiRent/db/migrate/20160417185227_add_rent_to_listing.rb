class AddRentToListing < ActiveRecord::Migration
  def change
    add_column :listings, :rent, :integer
  end
end
