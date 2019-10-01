class OverallController < ApplicationController
  def index
    @overall_sales = Sale.overall_sales
    render :index
  end
end
