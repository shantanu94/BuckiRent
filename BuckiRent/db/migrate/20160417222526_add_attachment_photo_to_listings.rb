# Created by Griffin Solimini on 4/17/16 to add photo to listings

class AddAttachmentPhotoToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :listings, :photo
  end
end
