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
    @stat = get_details(params[:gender])
  end

  def get_details(val)
		sql="SELECT	dimension, SUM (british_columbia) AS SUM_of_British_Columbia ,SUM (ha_total) AS SUM_of_HA_Total,
        SUM (ha1_interior) AS SUM_of_HA1_Interior,SUM (ha2_fraser) AS SUM_of_HA2_Fraser,
        SUM (ha3_vancouver_coastal) AS SUM_of_HA3_Vancouver_Coastal,SUM (ha4_vancouver_island) AS SUM_of_HA4_Vancouver_Island,
        SUM (ha5_northern) AS SUM_of_HA5_Northern
        FROM statistics WHERE dimension LIKE '%#{val}%' GROUP BY dimension;"   
    ActiveRecord::Base.connection.exec_query(sql)
  end
  
  def statdownload
    val=eval(params[:tab])[:value] 
    begin
      @results = get_details(val).to_a
      package = Axlsx::Package.new
      package.workbook do|wb|
        styles = wb.styles
        wb.add_worksheet(name: "Report") do |sheet|
          sheet.add_row ["Dimension" ,"British Columbia" , "HA Total" , 
          "HA1 Interior","HA2 Fraser","HA3 Vancouver Coastal","HA4 Iancouver Island","HA5 Northern"]
          @results.each do |result|
            sheet.add_row [ result["dimension"] , result["sum_of_british_columbia"] , result["sum_of_ha_total"] , 
            result["sum_of_ha1_interior"] , result["sum_of_ha2_fraser"] , 
            result["sum_of_ha3_vancouver_coastal"] ,result["sum_of_ha4_vancouver_island"],result["sum_of_ha5_northern"] ]			          
	        end 
			  end
      end    
      package.use_shared_strings = true
      report =  Date.today.strftime("%B") + "_"  + "stat_report"
      package.serialize(Rails.root.join('public/report/', report + '.xlsx'))
	    send_file("#{Rails.root.join('public/report/', report + '.xlsx')}", :type => 'application/excel')
    rescue
      render :json=> { :status=> false }
    end
	end  
end
