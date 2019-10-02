require 'pg'
# belongs_to :order
class Product < ApplicationRecord
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        product = find_by_id(row["id"]) || new
        product.attributes = row.to_hash
        product.save!
      end
    end
end
