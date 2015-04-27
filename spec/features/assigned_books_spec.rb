require 'rails_helper'


feature 'assigned_books' do

 before do
   create_bookclub = Bookclub.new
   create_user = AssignedBook.new
   create_book = Book.new
 end

  scenario 'a user can delete a book from the bookclub' do
    skip
    create_assigned_book = AssignedBook.new

    visit bookclubs_path(@bookclub)

    expect(page).to have_content('dictionary')

  end

end
