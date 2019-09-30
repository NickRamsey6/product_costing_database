class DaysController < ApplicationController

  def new
    @week = Week.find(params[:week_id])
    @day = @week.days.new
    render :new
  end

  def create
    @week = Week.find(params[:week_id])
    @day = @week.days.new(day_params)
    if @day.save
      redirect_to week_path(@week)
    else
      render :new
    end
  end

  def show
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
    render :show
  end

  def edit
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    if @day.update(day_params)
      redirect_to week_path(@week.day)
    else
      render :edit
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to week_path(@week.day)
  end

  def import
    @week = Week.find(params[:week_id])
    Day.import(params[:file], params[:week_id])
    redirect_to week_days_path
  end

  private
  def day_params
    params.require(:day).permit(:date, :sales, :labor, :week_id)
  end
end
