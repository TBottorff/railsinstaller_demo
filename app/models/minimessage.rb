class Minimessage < ActiveRecord::Base
  attr_accessible :actualMessage, :user_id
  belongs_to :user
  validates :content, :length => { :maximum => 140}
end
