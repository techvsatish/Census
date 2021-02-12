require "rails_helper"

RSpec.feature "Users Signout" do
  before do
		User.create(username: 'satish', email:"satish@example.com",password:"password",password_confirmation:"password",
    is_admin:true)
	end
  scenario "sign in and sign out user" do
    visit "/"    
    fill_in "Email", with:"satish@example.com"
    fill_in "Password", with:"password"
    click_button "Log in"
    expect(page).to have_link 'Logout'
    expect(page).to have_content("Signed in successfully.")

    click_link "Logout"
    expect(page).to have_content("You need to sign in or sign up before continuing.")

  end

  
end