class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.decimal :sales
      t.decimal :labor
      t.date :day
      t.integer :store_id

      t.timestamps
    end
  end
end
