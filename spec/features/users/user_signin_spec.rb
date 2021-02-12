require "rails_helper"

RSpec.feature "Users Signup" do
  before do
		User.create(username: 'satish', email:"satish@example.com",password:"password",password_confirmation:"password",
    is_admin:true)
	end
  scenario "with invalid credentials" do
    visit "/"    
    fill_in "Email", with:"satish111@example.com"
    fill_in "Password", with:"password"
    click_button "Log in"
    expect(page).to have_content("Invalid Email or password.")
  end

  scenario "with valid credentials" do
    visit "/"    
    fill_in "Email", with:"satish@example.com"
    fill_in "Password", with:"password"
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
  end
end