class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.datetime :date
      t.integer :sales
      t.integer :labor
      t.integer :week_id

      t.timestamps
    end
  end
end
