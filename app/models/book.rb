class Book < ActiveRecord::Base

  has_many :assigned_books
  has_many :bookclubs, through: :assigned_books

end
