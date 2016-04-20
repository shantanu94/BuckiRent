class MainController < ApplicationController
  def index
  	@listings = Listing.last(4)
  end
end
