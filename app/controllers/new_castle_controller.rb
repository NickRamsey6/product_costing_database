require 'pg'
class NewCastleController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @nc_sales = ActiveRecord::Base.connection.execute("SELECT SUM(nc_sales) FROM masters;").values[0][0]
    @nc_labor = ActiveRecord::Base.connection.execute("SELECT SUM(nc_labor) FROM masters;").values[0][0]
    render :index
  end
end
