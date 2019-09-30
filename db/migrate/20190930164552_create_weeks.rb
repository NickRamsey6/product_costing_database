class CreateWeeks < ActiveRecord::Migration[6.0]
  def change
    create_table :weeks do |t|
      t.datetime :week_of
      t.integer :sales
      t.integer :labor
      t.integer :store_id

      t.timestamps
    end
  end
end
