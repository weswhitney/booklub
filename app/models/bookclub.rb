class Bookclub < ActiveRecord::Base

  has_many :bookclub_users
  has_many :users, through: :bookclub_users

end
