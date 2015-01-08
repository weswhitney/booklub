require "rails_helper"

feature "signup" do

  scenario "user can sign up" do

    visit root_path

    within(".signup-form") do
      fill_in("username", with: "Ross")
      fill_in("email", with: "ross@friends.com")
      fill_in("password", with: "pivot")
      click_button("join")
    end

    expect(page).to have_content("Ross")
  end

  scenario "users can log in" do

    User.create!(
      :username => "Ross",
      :email => "ross@friends.com",
      :password => "pivot"
    )

    visit "/"
    within(".user-form") do
      fill_in("email", with: "ross@friends.com")
      fill_in("password", with: "pivot")
      click_on("Login")
    end

    expect(page).to have_content("Ross")
  end

end
