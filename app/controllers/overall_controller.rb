require 'pg'
class OverallController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @overall_sales = ActiveRecord::Base.connection.execute("SELECT SUM(sales) FROM sales;").values
    render :index
  end
end
