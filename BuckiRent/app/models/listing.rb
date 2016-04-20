#
#
#
#
#
#
# Edited by Grant Stenroos on 04/18/16
# Added basic address search functionality and advanced search functionality
#
# Edited by Grant Stenroos on 04/18/16
# Removed basic address search functionality, added drop down stuff for bed/bath/rent search fields for exactly/under/over
#
#
class Listing < ActiveRecord::Base
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  belongs_to :user

  def self.advancedSearch(heading, description, address, area, bed, bath, rent, bed_drop_down, bath_drop_down, rent_drop_down)

    if (heading == nil && description == nil && address == nil && area == nil && bed == nil && bath == nil && rent == nil)
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
      if bed_drop_down == "exactly"
        query += "bed = " + bed.to_s
      elsif bed_drop_down == "under"
        query += "bed < " + bed.to_s
      else
        query += "bed > " + bed.to_s
      end
    end

    if bath != "" then
      if query != ""
        query += " AND "
      end

      if bath_drop_down == 'exactly'
        query += "bath = " + bath.to_s
      elsif bath_drop_down == 'under'
        query += "bath < " + bath.to_s
      else
        query += "bath > " + bath.to_s
      end
    end

    if rent != "" then
      if query != ""
        query += " AND "
      end
      if rent_drop_down == 'exactly'
        query += "rent = " + rent.to_s
      elsif rent_drop_down == 'under'
        query += "rent < " + rent.to_s
      else
        query += "rent > " + rent.to_s
      end
    end

    if (heading == nil && description == nil && address == nil && area == nil && bed == nil && bath == nil && rent == nil)
      where("id > 0")
    elsif query != ""
      where(query)
    else
      where("id > 0")
    end

  end
end

