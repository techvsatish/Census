require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
  before do
  end
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(302)
    end
  end

end