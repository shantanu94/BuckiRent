# Created by Griffin Solimini on 4/19/16 to fix foreign keys in messages
class Foreignkey < ActiveRecord::Migration
  def change
    add_column :messages, :user_id, :integer
    add_index :messages, :user_id
  end
end
