class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :store_id
      t.integer :product_id
      t.date :date

      t.timestamps
    end
  end
end
