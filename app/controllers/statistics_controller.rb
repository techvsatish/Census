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
  def gendersearch
    sql="SELECT	dimension, SUM (british_columbia) AS SUM_of_British_Columbia ,SUM (ha_total) AS SUM_of_HA_Total,
    SUM (ha1_interior) AS SUM_of_HA1_Interior,SUM (ha2_fraser) AS SUM_of_HA2_Fraser,
    SUM (ha3_vancouver_coastal) AS SUM_of_HA3_Vancouver_Coastal,SUM (ha4_vancouver_island) AS SUM_of_HA4_Vancouver_Island,
    SUM (ha5_northern) AS SUM_of_HA5_Northern
    FROM statistics WHERE dimension LIKE '%#{params[:gender]}%' GROUP BY dimension;"   
    @stat = ActiveRecord::Base.connection.exec_query(sql)
  end
end
