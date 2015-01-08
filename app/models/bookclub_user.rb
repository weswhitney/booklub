class BookclubUser < ActiveRecord::Base

  belongs_to :user
  belongs_to :bookclub

end
