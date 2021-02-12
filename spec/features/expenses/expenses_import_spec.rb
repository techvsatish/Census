require "rails_helper"

RSpec.feature "Admin Signin" do
  before do
		@admin = User.create(username: 'satish', email:"satish@example.com",password:"password",password_confirmation:"password",
    is_admin:true)
    login_as(@admin)
	end
  scenario "with admin login navigating expenses index" do
    visit "/expenses/index"  
    expect(page).to have_content("Expenses")
    expect(page).to have_button('Import Expenses')
    click_button "Import Expenses"
    expect(page).to have_content("HSDA")
    #expect(page).to have_content("Imported successfully")
  end

end