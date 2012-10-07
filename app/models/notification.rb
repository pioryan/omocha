class Notification < ActiveRecord::Base
  attr_accessible :sender, :receiver
end
