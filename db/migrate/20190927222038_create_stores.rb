class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :dailysales
      t.integer :labor
      t.integer :cheese
      t.integer :pepperoni
      t.integer :meatlover
      t.integer :bbqchicken
      t.integer :carneamante
      t.integer :buffalochicken
      t.integer :italiansausage
      t.integer :hawaiian
      t.integer :garlicvegetarian
      t.integer :chickenpesto
      t.integer :mediterranean
      t.integer :tuscanveggie
      t.integer :margherita
      t.integer :primerib
      t.integer :thaichicken
      t.integer :gryo
      t.integer :coconutshrimp

      t.timestamps
    end
  end
end
