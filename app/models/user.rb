class User < ActiveRecord::Base

  has_secure_password

  has_many :bookclub_users
  has_many :bookclubs, through: :bookclub_users

end
