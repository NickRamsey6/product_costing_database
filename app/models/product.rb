require 'pg'
class Product < ApplicationRecord
#   belongs_to :order
#
# scope :most_orders, -> {(
#   select("products.name, count(orders.id) as orders_count")
#   .joins(:orders)
#   .group("products.id")
#   .order("orders_count DESC")
#   .limit(3)
#   )}

    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        product = find_by_id(row["id"]) || new
        product.attributes = row.to_hash
        product.save!
      end
    end
end
