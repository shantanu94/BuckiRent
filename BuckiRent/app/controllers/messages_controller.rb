# Created by Griffin Solimini on 4/17/16 as the Messages controller

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
