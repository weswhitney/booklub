require "rails_helper"

  feature "signup" do

    scenario "user can sign up" do

      visit "/"

      fill_in("username", with: "Ross")
      fill_in("email", with: "ross@friends.com", match: :first)
      fill_in("password", with: "pivot")
      click_button("join")
      save_and_open_page
      expect(page).to have_content("Ross")
    end

  end
