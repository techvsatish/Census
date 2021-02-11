class RemoveColsAndAddWithPrecision < ActiveRecord::Migration[5.1]
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

    add_column :statistics, :british_columbia, :decimal, :precision => 15, :scale => 2
    add_column :statistics, :ha_total, :decimal, :precision => 15, :scale => 2
    add_column :statistics, :ha1_interior, :decimal, :precision => 15, :scale => 2
    add_column :statistics, :ha2_fraser, :decimal, :precision => 15, :scale => 2
    add_column :statistics, :ha3_vancouver_coastal, :decimal, :precision => 15, :scale => 2
    add_column :statistics, :ha4_vancouver_island, :decimal, :precision => 15, :scale => 2
    add_column :statistics, :ha5_northern, :decimal, :precision => 15, :scale => 2
    
    add_column :expenses, :m_20052006, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :m_20062007, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :m_20072008, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :m_20082009, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :m_20092010 , :decimal, :precision => 15, :scale => 2  
    add_column :expenses, :f_20052006, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :f_20062007, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :f_20072008, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :f_20082009, :decimal, :precision => 15, :scale => 2
    add_column :expenses, :f_20092010, :decimal, :precision => 15, :scale => 2
  end
end
