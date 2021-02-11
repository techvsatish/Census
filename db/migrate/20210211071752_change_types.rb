class ChangeTypes < ActiveRecord::Migration[5.1]
  def change
    remove_column :statistics, :british_columbia
    remove_column :statistics, :ha_total
    remove_column :statistics, :ha1_interior
    remove_column :statistics, :ha2_fraser
    remove_column :statistics, :ha3_vancouver_coastal
    remove_column :statistics, :ha4_vancouver_island
    remove_column :statistics, :ha5_northern  
    
    remove_column :expenses, :m_20052006
    remove_column :expenses, :m_20062007
    remove_column :expenses, :m_20072008
    remove_column :expenses, :m_20082009
    remove_column :expenses, :m_20092010    
    remove_column :expenses, :f_20052006
    remove_column :expenses, :f_20062007
    remove_column :expenses, :f_20072008
    remove_column :expenses, :f_20082009
    remove_column :expenses, :f_20092010
  end

end
