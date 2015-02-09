require 'rails_helper'

feature 'bookclubs' do

  scenario 'users can create a bookclub' do

    visit "/dashboards/id"
    click_on "Start a bookclub"
    fill_in "Name", with: "awes book lub"
    click_on "Create Bookclub"

    expect(page).to have_content("Bookclub was successfully created")

  end

  # scenario 'user can invite other users to join bookclubs' do
  #
  #   Bookclub.create!(
  #   id: 15,
  #   name: "awes book lub"
  #   )
  #
  #   visit "bookclubs/15"
  #   click_on "Invite some friends"
  #   select('wes', from: 'Add Bookclub Member')
  # end

end
