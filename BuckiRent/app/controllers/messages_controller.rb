class MessagesController < ApplicationController

	before_action :authenticate_user!

  	def new
  		@chosen_recipient = User.find_by(email: params[:to])
  	end

  	def create
	    #recipient = User.find_by(:email => params[:to])
			recipient = User.find_by(:email => "gstenroos@gmail.com")

			conversation = current_user.send_message(recipient, params[:message][:body], params[:message][:subject]).conversation

	    flash[:success] = "Message has been sent!"
	    redirect_to conversation_path(conversation)
  	end

end
