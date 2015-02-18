require 'rails_helper'


feature 'assigned_books' do

 before do
   create_bookclub = Bookclub.new
   create_user = AssignedBook.new
 end

  scenario 'a user can delete a book from the bookclub' do

    create_assigned_book = AssignedBook.new
    visit bookclub_assigned_book_path(@bookclub, @assigned_book)
  end

end
