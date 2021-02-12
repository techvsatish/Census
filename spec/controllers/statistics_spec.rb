require 'rails_helper'

RSpec.describe StatisticsController, type: :controller do
  before do
    @stat=Statistic.create(dimension: "Interprovincial migrants", british_columbia: "85315.0", 
    ha_total: "85310.0", ha1_interior: "22485.0:6",ha2_fraser: "18025.0", ha3_vancouver_coastal: "19045.0", 
    ha4_vancouver_island: "20665.0", ha5_northern: "5085.0")
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(302)
    end
  end

end