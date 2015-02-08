class Discussion < ActiveRecord::Base

  validates :discussion, presence: true

  belongs_to :assigned_book
  belongs_to :bookclub_user
  has_many :users, through: :bookclub_user
end
