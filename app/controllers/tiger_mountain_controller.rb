require 'pg'
class TigerMountainController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @tm_sales = ActiveRecord::Base.connection.execute("SELECT SUM(tm_sales) FROM masters;").values[0][0]
    @tm_labor = ActiveRecord::Base.connection.execute("SELECT SUM(tm_labor) FROM masters;").values[0][0]
    render :index
  end
end
