class AddForeignKeyForWeeks < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :weeks, :stores
  end
end
