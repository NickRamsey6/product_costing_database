require 'pg'
class IssaquahController < ApplicationController
  DB = PG.connect({:dbname => 'tuscan_stone_development'})
  def index
    @is_sales = ActiveRecord::Base.connection.execute("SELECT SUM(is_sales) FROM masters;").values
    @is_labor = ActiveRecord::Base.connection.execute("SELECT SUM(is_labor) FROM masters;").values
    render :index
  end
end
