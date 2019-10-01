require 'pg'
class NewCastleController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @nc_sales = ActiveRecord::Base.connection.execute("SELECT SUM(nc_sales) FROM masters;").values
    @nc_labor = ActiveRecord::Base.connection.execute("SELECT SUM(nc_labor) FROM masters;").values
    render :index
  end
end
