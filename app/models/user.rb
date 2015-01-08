class User < ActiveRecord::Base

  has_secure_password

  has_many :memberships
  has_many :books, through: :memberships

end
