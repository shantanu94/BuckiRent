# Created by Griffin Solimini on 4/17/16. This is the message model

class Message < ActiveRecord::Base
  belongs_to :user
end
