class OrdersController < ApplicationController
  def import
    Order.import(params[:file])
    redirect_to'/'
  end
  def index
    @most_orders = Product.most_orders
    render :index
  end
end
