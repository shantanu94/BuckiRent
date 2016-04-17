class Listing < ActiveRecord::Base
  attr_accessor :address, :heading, :description, :area, :bed, :bath, :rent
end
