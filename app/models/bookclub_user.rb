class BookclubUser < ActiveRecord::Base

  belongs_to :user
  belongs_to :bookclub
  has_many :discussions

end
