class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :ingredients
      t.integer :cost
      t.integer :store_id
      t.timestamps
    end
  end
end
