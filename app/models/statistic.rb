class Statistic < ApplicationRecord
  
  require 'open-uri'
  require 'csv'

  def self.import_data
    url="https://catalogue.data.gov.bc.ca/dataset/ecc0b2fe-1287-46fd-8fc1-29dad621c0ce/resource/1665c496-7e16-487a-bb6a-54f05d166bc7/download/2016_census_profiles_by_health_region.csv"
    
    csv = open(url)
    CSV.new(csv).each_with_index  do |row, i|      
      next if i == 0
      Statistic.create(dimension:row[0], british_columbia:row[1], ha_total:row[2], ha1_interior:row[3],
                        ha2_fraser:row[4], ha3_vancouver_coastal:row[5], ha4_vancouver_island:row[6], ha5_northern:row[7])
      next if i==10 && Rail.env=="test"
    end    
  end  
end
