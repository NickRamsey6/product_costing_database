class CreateMasters < ActiveRecord::Migration[6.0]
  def change
    create_table :masters do |t|
      t.date :day
      t.decimal :nc_sales
      t.decimal :nc_labor
      t.decimal :mi_sales
      t.decimal :mi_labor
      t.decimal :tm_sales
      t.decimal :tm_labor
      t.decimal :is_sales
      t.decimal :is_labor

      t.timestamps
    end
  end
end
