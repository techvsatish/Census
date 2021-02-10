class CreateStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.string :dimension
      t.string :british_columbia
      t.string :ha_total
      t.string :ha1_interior
      t.string :ha2_fraser
      t.string :ha3_vancouver_coastal
      t.string :ha4_vancouver_island
      t.string :ha5_northern

      t.timestamps
    end
  end
end
