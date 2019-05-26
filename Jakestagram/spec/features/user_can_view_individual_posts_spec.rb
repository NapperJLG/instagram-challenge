require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can view individial posts" do
    visit "/posts/new"
    fill_in "Text", with: "Test post"
    click_button "Submit"
    click_link "View Post"
    expect(page).to have_content("Test post")
  end
end
