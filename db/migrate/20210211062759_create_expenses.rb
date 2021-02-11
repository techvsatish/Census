class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :hsda
      t.string :ha
      t.string :service
      t.string :service_type
      t.string :m_20052006
      t.string :m_20062007
      t.string :m_20072008
      t.string :m_20082009
      t.string :m_20092010
      t.string :f_20052006
      t.string :f_20062007
      t.string :f_20072008
      t.string :f_20082009
      t.string :f_20092010

      t.timestamps
    end
  end
end
