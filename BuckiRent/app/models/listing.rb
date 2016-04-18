class Listing < ActiveRecord::Base
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  belongs_to :user

  def self.search(query)
    if query != nil then
      where("address like ?", "%#{query}%")
    else
      having("id > 0").group('id')
    end
  end
end

