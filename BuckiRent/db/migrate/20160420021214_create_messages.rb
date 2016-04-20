# Created by Griffin Solimini on 4/19/16 to create the messages table

class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :from
      t.string :to
      t.string :subject
      t.text :message

      t.timestamps null: false
    end
  end
end
