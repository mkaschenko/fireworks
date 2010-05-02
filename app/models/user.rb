class User < ActiveRecord::Base
  validates_presence_of :facebook_id
end
