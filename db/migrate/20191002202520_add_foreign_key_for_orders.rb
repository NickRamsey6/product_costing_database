class AddForeignKeyForOrders < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :orders, :products
  end
end
