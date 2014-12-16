class CaseController < ApplicationController
  include CaseHelper

  def search
    puts params[:start_date]
    start_date = Date.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    end_date = Date.new(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    date_range = start_date..end_date
    start_time = DateTime.new(2000, 1, 1, params[:start_time][:hour].to_i, params[:start_time][:minute].to_i, 0)
    end_time = DateTime.new(2000, 1, 1, params[:end_time][:hour].to_i, params[:end_time][:minute].to_i, 0)
    time_range = start_time..end_time
    @cases = Case.where(time_occurred: time_range, date_occurred: date_range, type_of_incident: params[:incidents], weekday: params[:days])


    @start_time = Time.new(2000, 1, 1, params[:start_time][:hour].to_i, params[:start_time][:minute].to_i, 0)
    @end_time = Time.new(2000, 1, 1, params[:end_time][:hour].to_i, params[:end_time][:minute].to_i, 0)
    @start_date = Date.new((params[:start_date][:year]).to_i, (params[:start_date][:month]).to_i, (params[:start_date][:day]).to_i)
    @end_date = Date.new((params[:end_date][:year]).to_i, (params[:end_date][:month]).to_i, (params[:end_date][:day]).to_i)

    if params[:days] != nil
      @days = params[:days]
    else
      @days = Array.new
    end
    if params[:incidents] != nil
      @incidents = params[:incidents]
    else
      @incidents = Array.new
    end
    if params[:categories] != nil
      @categories = params[:categories]
    else
      @categories = Array.new
    end
  	render "show"
  end
  def show
    @days = Case::DAYS
    @start_date = Date.new(2013, 5, 17)
    @end_date = Date.today
    @start_time = Time.new(2000, 1, 1, 0, 0, 0)
    @end_time = Time.new(2000, 1, 1, 23, 59, 0)
    @incidents = []
    @categories = Array.new
  	@cases = Case.all
  end
end
