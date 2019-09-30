class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :daily_sales
      t.integer :labor
      t.integer :cheese
      t.integer :pepperoni
      t.integer :meat_lover
      t.integer :bbq_chicken
      t.integer :carne_amante
      t.integer :buffalo_chicken
      t.integer :chicken_bacon_ranch
      t.integer :italian_sausage
      t.integer :hawaiian
      t.integer :garlic_vegetarian
      t.integer :chicken_pesto
      t.integer :mediterranean
      t.integer :tuscan_veggie
      t.integer :margherita
      t.integer :prime_rib
      t.integer :thai_chicken
      t.integer :gyro
      t.integer :coconut_shrimp

      t.timestamps
    end
  end
end
