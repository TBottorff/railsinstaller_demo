class Minimessage < ActiveRecord::Base
  attr_accessible :actualMessage, :user_id
  belongs_to :user
  validates :actualMessage, :length => { :maximum => 140}
  validates :user_id, :presence => true
end
