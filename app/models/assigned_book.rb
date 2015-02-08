class AssignedBook < ActiveRecord::Base

  belongs_to :book
  belongs_to :bookclub
  has_many :discussions

end
