require 'rails_helper'

feature 'bookclubs' do

  scenario 'users can create a bookclub' do

    visit "/dashboards/id"
    click_on "Start a bookclub"
    fill_in "Name", with: "awes book lub"
    click_on "Create Bookclub"

    expect(page).to have_content("Bookclub was successfully created")

  end

  scenario 'users can delete a bookclub' do

    bookclub = Bookclub.create!(
    name: "awes book lub"
    )

    visit bookclub_path(bookclub)
    click_on "Delete"
    expect(page).to have_no_content('awes book lub')

  end

  scenario 'user can invite other users to join bookclubs' do

    bookclub = Bookclub.create!(
    name: "awes book lub"
    )
    user = User.create!(username: "wes")

    visit bookclub_path(bookclub)
    click_on "Invite some friends"
    select(user.username, from: 'bookclub_user_user_id')
    click_on "Add Book lub Member"

    expect(page).to have_content('book lub member successfully added')

  end

  scenario 'user can delete users from their bookclub' do

    
  end

end
