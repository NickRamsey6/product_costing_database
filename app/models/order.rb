require 'pg'
class Order < ApplicationRecord
# has_many :products
  # scope :most_orders, -> {(
  #   select("products.name, count(orders.id) as orders_count")
  #   .joins(:products)
  #   .group("id")
  #   .order("orders_count DESC")
  #   .limit(3)
  #   )}
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Order.create! row.to_hash
    end
  end
end
