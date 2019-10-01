class MastersController < ApplicationController
  def index
    @masters = Master.all
    render :index
  end

  def new
    @master = Master.new
    render :new
  end

  def create
    @master = Master.create(master_params)
    if @master.save
      redirect_to masters_path
    else
      render :new
    end
  end

  def edit
    @master = Master.find(params[:id])
    render :edit
  end

  def show
    @master = Master.find(params[:id])
    render :show
  end

  def update
    @master = Master.find(params[:id])
    if @master.update(master_params)
      redirect_to masters_path
    else
      render :edit
    end
  end

  def destroy
    @master = Master.find(params[:id])
    @master.destroy
    redirect_to masters_path
  end

  def import
    Master.import(params[:file])
    redirect_to '/'
  end

  private
  def master_params
    params.require(:master).permit(:masters, :day, :nc_sales, :nc_labor, :mi_sales, :mi_labor, :tm_sales, :tm_labor, :is_sales, :is_labor)
  end
end
