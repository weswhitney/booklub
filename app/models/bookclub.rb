class Bookclub < ActiveRecord::Base
  has_many :assigned_books  
  has_many :bookclub_users
  has_many :users, through: :bookclub_users
  validates :name, presence: true
end
