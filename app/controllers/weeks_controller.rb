class WeeksController < ApplicationController

  def new
    @store = Store.find(params[:store_id])
    @week = @store.weeks.new
    render :new
  end

  def create
    @store = Store.find(params[:store_id])
    @week = @store.weeks.new(week_params)
    if @week.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def show
    @store = Store.find(params[:store_id])
    @week = Week.find(params[:id])
    render :show
  end

  def edit
    @store = Store.find(params[:store_id])
    @week = Week.find(params[:id])
    render :edit
  end

  def update
    @week = Week.find(params[:id])
    if @week.update(week_params)
      redirect_to store_path(@week.store)
    else
      render :edit
    end
  end

  def destroy
    @week = Week.find(params[:id])
    @week.destroy
    redirect_to store_path(@week.store)
  end

  def import
    @store = Store.find(params[:store_id])
    Week.import(params[:file], params[:store_id])
    redirect_to store_weeks_path, notice: "Week added!"
  end

  private
  def week_params
    params.require(:week).permit(:week_of, :sales, :labor, :store_id)
  end
end
