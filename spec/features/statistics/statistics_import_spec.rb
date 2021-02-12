require "rails_helper"

RSpec.feature "Admin Signin" do
  before do
		@admin = User.create(username: 'satish', email:"satish@example.com",password:"password",password_confirmation:"password",
    is_admin:true)
    login_as(@admin)
	end
  scenario "with admin login navigating statistics index" do
    visit "/statistics/index"  
    expect(page).to have_content("Statistics")
    expect(page).to have_button('Import Statistics')
    click_button "Import Statistics"
    expect(page).to have_content("Dimension")
    #expect(page).to have_content("Imported successfully")
  end

end