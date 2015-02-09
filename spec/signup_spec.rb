require "rails_helper"

# feature "signup" do
#
#   scenario "user can sign up" do
#
#     visit root_path
#
#     within(".signup-form") do
#       fill_in("username", with: "Ross")
#       fill_in("email", with: "ross@friends.com")
#       fill_in("password", with: "pivot")
#       click_button("join")
#     end
#
#     expect(page).to have_content("Ross")
#   end
#
#   scenario "users can log in and log out" do
#
#     User.create!(
#       :username => "Ross",
#       :email => "ross@friends.com",
#       :password => "pivot"
#     )
#
#     visit "/"
#
#     expect(page).to_not have_link("Log out")
#
#     within(".user-form") do
#       fill_in("email", with: "ross@friends.com")
#       fill_in("password", with: "pivot")
#       click_on("Login")
#     end
#
#     expect(page).to have_content("Ross")
#     click_on("Log out")
#     expect(page).to_not have_content("Ross")
#     expect(page).to have_content("you have successfully logged out")
#
#
#   end
#
# end
