class StatisticsController < ApplicationController
  def index
    @data = Statistic.page(params[:page]).per(50)
  end

  def import_statistics
    begin      
      @data = Statistic.import_data
      redirect_to statistics_index_path,notice: "Imported successfully......."
    rescue
      render :json=> { :status=> false }
      redirect_to statistics_index_path,notice: "Unsuccessful.."
    end    
  end
end
