class Listing < ActiveRecord::Base
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  belongs_to :user

  def self.advancedSearch(heading, description, address, area, bed, bath, rent)

    if(heading == nil && description == nil && address == nil && area == nil && bed == nil && bath == nil && rent == nil)
      where("id > 0")
    end

    query = ""
    if heading != "" then
      query += "heading LIKE '%" + heading.to_s + "%'"
    end

    if description != "" then
      if query != ""
        query += " AND "
      end
      query += "description LIKE '%" + description.to_s + "%'"
    end

    if address != "" then
      if query != ""
        query += " AND "
      end
      query += "address LIKE '%" + address.to_s + "%'"
    end

    if area != "" then
      if query != ""
        query += " AND "
      end
      query += "area LIKE '%" + area.to_s + "%'"
    end

    if bed != "" then
      if query != ""
        query += " AND "
      end
      query += "bed LIKE '%" + bed.to_s + "%'"
    end

    if bath != "" then
      if query != ""
        query += " AND "
      end
      query += "bath LIKE '%" + bath.to_s + "%'"
    end

    if rent != "" then
      if query != ""
        query += " AND "
      end
      query += "rent LIKE '%" + rent.to_s + "%'"
    end

    if(heading == nil && description == nil && address == nil && area == nil && bed == nil && bath == nil && rent == nil)
      where("id > 0")
    elsif query != ""
      where(query)
    else
      where("id > 0")
    end

  end
end

