class ListingController < ApplicationController

  def list

    #@listings = Listing.search(params[:search])
    @listings = Listing.advancedSearch(params[:search_heading], params[:search_description], params[:search_address],
                                       params[:search_area], params[:search_bed], params[:search_bath], params[:search_rent])

  end

  def mylist
    @user = current_user
    @listings = @user.listings
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

    @user = current_user

    @listing.user = @user

    if @listing.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update_attributes(listing_params)
      redirect_to :action => 'show', :id => @listing
    else
      render :action => 'edit'
    end
  end

  def delete
    Listing.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def listing_params
    params.require(:listing).permit(:address, :heading, :description, :area, :bed, :bath, :rent, :photo)
  end

end
