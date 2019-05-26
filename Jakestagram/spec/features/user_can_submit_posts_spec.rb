require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/posts/new"
    fill_in "Text", with: "Test post"
    click_button "Submit"
    expect(page).to have_content("Test post")
  end
end
