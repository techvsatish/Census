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
    if @data.blank?
      expect(page).to have_content("Data not available")
    else
      expect(page).to_not have_content("Data not available")
    end
  end

end