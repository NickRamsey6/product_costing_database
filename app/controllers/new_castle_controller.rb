require 'pg'
class NewCastleController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @nc_sales = ActiveRecord::Base.connection.execute("SELECT SUM(nc_sales) FROM masters;").values[0][0]
    @nc_labor = ActiveRecord::Base.connection.execute("SELECT SUM(nc_labor) FROM masters;").values[0][0]
    @most_orders = ActiveRecord::Base.connection.execute("SELECT products.name, count(orders.id) as orders_count FROM products INNER JOIN orders ON orders.product_id = products.id GROUP BY products.id ORDER BY orders_count DESC LIMIT 3").values[0]
    render :index
  end

  def import
    Product.import(params[:file])
    redirect_to'/'
  end
end
