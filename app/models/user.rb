class User < ActiveRecord::Base
  has_many :invitations

  validates_presence_of :facebook_id
end
