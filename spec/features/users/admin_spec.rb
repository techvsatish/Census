require "rails_helper"

RSpec.feature "Users Signin" do
  before do
		user1 = User.create(username: 'satish', email:"satish@example.com",password:"password",password_confirmation:"password",
    is_admin:true)

    user2 = User.create(username: 'kumar', email:"kumar@example.com",password:"password",password_confirmation:"password",
    is_admin:false)
	end
  scenario "with admin login" do
    visit "/"    
    fill_in "Email", with:"satish@example.com"
    fill_in "Password", with:"password"
    click_button "Log in"
    expect(page).to have_button '☰ Open Sidebar'
    expect(page).to have_content("Signed in successfully.")
  end

  scenario "with nonadmin login" do
    visit "/"    
    fill_in "Email", with:"kumar@example.com"
    fill_in "Password", with:"password"
    click_button "Log in"
    expect(page).to_not have_button '☰ Open Sidebar'
    expect(page).to have_content("Signed in successfully.")
  end

  # scenario "with valid credentials" do
  #   visit "/"    
  #   fill_in "Email", with:"satish@example.com"
  #   fill_in "Password", with:"password"
  #   click_button "Log in"
  #   expect(page).to have_content("Signed in successfully.")
  # end
end