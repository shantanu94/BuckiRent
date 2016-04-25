# Created by Griffin Solimini on 4/17/16 as the listing controller
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




class ListingController < ApplicationController

  def list

    @allListings = Listing.all
    @listings = Listing.advancedSearch(params[:search_heading], params[:search_description], params[:search_address],
                                       params[:search_area], params[:search_bed], params[:search_bath], params[:search_rent], params[:bed_drop_down], params[:bath_drop_down], params[:rent_drop_down])
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

  def message
    @listing = Listing.find(params[:id])
    @user = @listing.user
    @message = Message.new
  end

  def post_message
    user = User.find(params[:id])
    @message = Message.new(message_params)

    @message.user = user

    if @message.save
      redirect_to :action => 'list'
    else
      render :action => 'message'
    end
  end

  def message_params
    params.require(:message).permit(:subject, :message)
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
    redirect_to :action => 'mylist'
  end

  def listing_params
    params.require(:listing).permit(:address, :heading, :description, :area, :bed, :bath, :rent, :photo)
  end

end
