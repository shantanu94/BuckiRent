class ListingController < ApplicationController

  def list
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def listing_params
    params.require(:listing).permit(:address, :heading, :description, :area, :bed, :bath, :rent)
  end

end
