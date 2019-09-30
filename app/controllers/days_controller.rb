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
    @week.Week.find(params[:week_id])
    @day = Day.find(params[:id])
    render :show
  end

  private
  def day_params
    params.require(:day).permit(:date, :sales, :labor, :week_id)
  end
end
