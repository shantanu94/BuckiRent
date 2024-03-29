# Created by Griffin Solimini on 4/19/16 to create the messages foreign keys

class ForeignKeysMessages < ActiveRecord::Migration
  def change
    add_column :messages, :from_id, :integer
    add_index :messages, :from_id

    add_column :messages, :to_id, :integer
    add_index :messages, :to_id

    remove_column :messages, :to
    remove_column :messages, :from
  end
end
