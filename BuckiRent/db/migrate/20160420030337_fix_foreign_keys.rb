# Created by Griffin Solimini on 4/19/16 to remove foreign keys in messages

class FixForeignKeys < ActiveRecord::Migration
  def change
    remove_column :messages, :from_id

    remove_column :messages, :to_id
  end
end
