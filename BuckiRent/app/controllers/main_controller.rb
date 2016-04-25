# Edited by Shantanu Bhardwaj on 4/20/16
# Added @listings variable

class MainController < ApplicationController
  def index
  	@listings = Listing.last(4)
  end
end
