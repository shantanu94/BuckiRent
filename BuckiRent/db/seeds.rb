# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#User.create!([
#  {
#    :email => "addListings@yahoo.com", 
#    :password => "thisIsABadPassword", 
#    :password_confirmation => "thisIsABadPassword"
#    },
#  {
#    :email => "droptableteams3901@gmail.com", 
#    :password => "thisIsABadPassword", 
#    :password_confirmation => "thisIsABadPassword"
#    }
#])

user1 = User.new(
      :email                 => "addListings@yahoo.com",
      :password              => "12345678",
      :password_confirmation => "12345678"
  )
user1.save!
user2 = User.new(
      :email                 => "droptableteams3901@gmail.com",
      :password              => "12345678",
      :password_confirmation => "12345678"
  )
user2.save!


Listing.create([
  {
    :address => "56 West Norwich Avenue, Columbus, Ohio",
    :heading => "56 West Norwich Avenue",
    :description => "Newer oak hardwood floors, energy efficient windows, large bedrooms, low utilities, great location!",
    :area => "North",
    :bed => 5,
    :bath => 2,
    :created_at => DateTime.new(2016,4,20),
    :updated_at => DateTime.new(2016,4,20),
    :rent => 2550,
    :photo_file_name => "0056wnorwich01-1.jpg",
    :photo_content_type => "image/jpeg",
    :photo_file_size => 40592,
    :photo_updated_at => DateTime.new(2016,4,20),
    :user_id => 1,
  },
  {
    :address => "106 1/2 East 14th Avenue, Columbus, Ohio",
    :heading => "106 1/2 East 14th Ave",
    :description => "Located close to campus, this apartment comes with your basic appliances and A/C.",
    :area => "Central",
    :bed => 3,
    :bath => 1,
    :created_at => DateTime.new(2016,4,20),
    :updated_at => DateTime.new(2016,4,20),
    :rent => 1300,
    :photo_file_name => "photo-13-1.jpg",
    :photo_content_type => "image/jpeg",
    :photo_file_size => 1747976,
    :photo_updated_at => DateTime.new(2016,4,20),
    :user_id => 1,
  },
  {
    :address => "114 East Lane Avenue, Columbus, Ohio",
    :heading => "114 East Lane Avenue J",
    :description => "This apartment comes with a stove and refrigerator, Central A/C, and off-street parking is available.",
    :area => "Northeast",
    :bed => 2,
    :bath => 1,
    :created_at => DateTime.new(2016,4,20),
    :updated_at => DateTime.new(2016,4,20),
    :rent => 1165,
    :photo_file_name => "dscn6282-1.jpg",
    :photo_content_type => "image/jpeg",
    :photo_file_size => 129580,
    :photo_updated_at => DateTime.new(2016,4,20),
    :user_id => 2,
  },
  {
    :address => "1596 Highland Street, Columbus, Ohio",
    :heading => "1596 Highland Street B",
    :description => "Located between Med Center and High, this apartment is in a prime location. It comes with basic appliances, central A/C, and water is included.",
    :area => "Southwest",
    :bed => 3,
    :bath => 2,
    :created_at => DateTime.new(2016,4,20),
    :updated_at => DateTime.new(2016,4,20),
    :rent => 1650,
    :photo_file_name => "dscn5554-1.jpg",
    :photo_content_type => "image/jpeg",
    :photo_file_size => 228575,
    :photo_updated_at => DateTime.new(2016,4,20),
    :user_id => 2,
  }])