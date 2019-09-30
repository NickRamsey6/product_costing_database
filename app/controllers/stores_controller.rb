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
    
