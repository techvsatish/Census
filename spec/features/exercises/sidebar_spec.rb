require "rails_helper"

RSpec.feature "Admin Signin" do
  before do
		@admin = User.create(username: 'satish', email:"satish@example.com",password:"password",password_confirmation:"password",
    is_admin:true)
    login_as(@admin)
	end
  scenario "with admin login" do
    visit "/"    
    click_button '☰ Open Sidebar'
    within '#mySidebar' do
      expect(page).to have_link("Statistics")
      expect(page).to have_link("Expenditure")
    end
  end

  scenario "with admin login click statistics" do
    visit "/"    
    click_button '☰ Open Sidebar'
    within '#mySidebar' do
      click_link "Statistics"
      expect(page.current_path).to eq(statistics_index_path)
      expect(page).to have_content("Statistics")
    end
  end

  scenario "with admin login click expenditure" do
    visit "/"    
    click_button '☰ Open Sidebar'
    within '#mySidebar' do
      click_link "Expenditure"
      expect(page.current_path).to eq(expenses_index_path)
    end
  end
end