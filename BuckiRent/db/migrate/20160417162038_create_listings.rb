# Created by Griffin Solimini on 4/17/16 to create the listing table

class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :heading
      t.text :description
      t.string :area
      t.integer :bed
      t.integer :bath
      t.timestamps null: false
    end
  end
end
