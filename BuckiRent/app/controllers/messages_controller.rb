class MessagesController < ApplicationController
  def list
    @messages = current_user.messages
  end

  def show
    @message = Message.find(params[:id])
  end

  def delete
    Message.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
