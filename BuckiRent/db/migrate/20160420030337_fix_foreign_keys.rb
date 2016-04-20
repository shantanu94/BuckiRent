class FixForeignKeys < ActiveRecord::Migration
  def change
    remove_column :messages, :from_id

    remove_column :messages, :to_id
  end
end
