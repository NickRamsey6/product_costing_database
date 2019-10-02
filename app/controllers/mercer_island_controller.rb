require 'pg'
class MercerIslandController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @mi_sales = ActiveRecord::Base.connection.execute("SELECT SUM(mi_sales) FROM masters;").values[0][0]
    @mi_labor = ActiveRecord::Base.connection.execute("SELECT SUM(mi_labor) FROM masters;").values[0][0]
    render :index
  end
end
