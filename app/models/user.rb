require 'base_user'

class User < ActiveRecord::Base # LibUser
  has_many :posts
end
