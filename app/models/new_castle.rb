class NewCastle < ApplicationRecord

  scope :most_orders, -> {(
    select("products.id, products.name, count(orders.id) as orders_count")
    .joins(:orders)
    .group("products.id")
    .order("orders_count DESC")
    .limit(3)
    )}

end
