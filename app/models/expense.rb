class Expense < ApplicationRecord
  require 'open-uri'
  require 'csv'

  def self.import_data
    url="https://catalogue.data.gov.bc.ca/dataset/a16d7095-9577-4c81-a800-33763ed75c8e/resource/b8fea73b-cb28-43aa-ab22-ce52e80f9941/download/bchealthservicesbygenderandhealthservicedeliveryarea.csv"
    
    csv = open(url)
    CSV.new(csv).each_with_index  do |row, i|      
      next if i == 0
      Expense.create(hsda:row[0], ha:row[1], service:row[2], service_type:row[3],
                        m_20052006:row[4], m_20062007:row[5], m_20072008:row[6], m_20082009:row[7],
                        m_20092010:row[8], f_20052006:row[9], f_20062007:row[10], f_20072008:row[11],
                        f_20082009:row[12], f_20092010:row[13])
      
    end    
  end 
end
