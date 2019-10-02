require 'pg'
class IssaquahController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @is_sales = ActiveRecord::Base.connection.execute("SELECT SUM(is_sales) FROM masters;").values[0][0]
    @is_labor = ActiveRecord::Base.connection.execute("SELECT SUM(is_labor) FROM masters;").values[0][0]
    render :index
  end
end
