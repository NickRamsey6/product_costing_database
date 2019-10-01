require 'pg'
class OverallController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @overall_sales = ActiveRecord::Base.connection.execute("SELECT SUM(nc_sales + mi_sales + tm_sales + is_sales) FROM masters;").values
    @overall_labor = ActiveRecord::Base.connection.execute("SELECT SUM(nc_labor + mi_labor + tm_labor + is_labor) FROM masters;").values
    render :index
  end
end
