class Discussion < ActiveRecord::Base

  validates :discussion, presence: true

  belongs_to :assigned_book
  belongs_to :bookclub_user
  # belongs_to :users, through: :bookclub_user
  belongs_to :user
end
