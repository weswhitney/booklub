class AssignedBook < ActiveRecord::Base

  belongs_to :book
  belongs_to :bookclub

end
