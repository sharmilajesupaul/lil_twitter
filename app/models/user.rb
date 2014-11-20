class User < ActiveRecord::Base
  has_many :followers_users
  has_many :followers, through: :followers_users
end
