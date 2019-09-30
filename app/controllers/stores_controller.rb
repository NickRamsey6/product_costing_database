class StoresController < ApplicationController

  def index
    @stores = Store.all
    render :index
  end

  def new
    @store = Store.new
    render :new
  end

  def create
    @store = Store.create(store_params)
    if @store.save
      flash[:notice] = "Store successfully created!"
      redirect_to stores_path
    else
      flash[:alert] = "Please fill out all fields!"
      render :new
    end
  end

  def edit
    @store = Store.find(params[:id])
    render :edit
  end

  def show
    @store = Store.find(params[:id])
    render :show
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to stores_path
    else
      render :edit
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destory
    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:name)
  end
end
