class SalesController < ApplicationController
  def index
    @sales = Sale.all
    render :index
  end

  def new
    @sale = Product.new
    render :new
  end

  def create
    @sale = Sale.create(sale_params)
    if @sale.save
      flash[:notice] = "Sales added!"
      redirect_to sales_path
    else
      flash[:alert] = "Not added"
      render :new
    end
  end

  def edit
    @sale = Sale.find(params[:id])
    render :edit
  end

  def show
    @sale = Sale.find(params[:id])
    render :show
  end

  def update
    @sale = Sale.find(params[:id])
    if @sale.update(sale_params)
      redirect_to sales_path
    else
      render :edit
    end
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    redirect_to sales_path
  end

  def import
    Sale.import(params[:file])
    redirect_to '/'
  end

  private
  def sale_params
    params.require(:sale).permit(:sales, :labor, :day, :store_id)
  end
end
