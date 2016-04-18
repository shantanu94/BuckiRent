class Listing < ActiveRecord::Base
  has_attached_file :photo
  belongs_to :user
end
