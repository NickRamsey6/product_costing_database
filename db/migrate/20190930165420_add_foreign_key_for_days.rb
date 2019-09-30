class AddForeignKeyForDays < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :days, :weeks
  end
end
