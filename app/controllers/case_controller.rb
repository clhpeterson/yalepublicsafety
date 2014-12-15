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
    puts params[:incidents]
    if params[:all] != "1"
      #all_types = get_types_to_check()
      #puts params[:"DRIVING WHILE INTOXICATED-ALCOHOL"]
      @cases = Case.where(time_occurred: time_range, date_occurred: date_range, type_of_incident: params[:incidents])
    else
      @cases = Case.where(time_occurred: time_range, date_occurred: date_range)
    end
  	render "show"
  end
  def show
  	@cases = Case.all
  end
end
