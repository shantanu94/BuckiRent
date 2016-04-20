# Created by Griffin Solimini on 4/17/16 to add foreign key to listings

class Listings < ActiveRecord::Migration
  def change
    add_column :listings, :user_id, :integer
    add_index :listings, :user_id
  end
end
