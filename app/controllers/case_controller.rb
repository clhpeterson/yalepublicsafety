class CaseController < ApplicationController
  include CaseHelper

  def search
    @start_date = Date.parse(params[:start_date])
    @end_date = Date.parse(params[:end_date])
    date_range = @start_date..@end_date
    @start_hour = params[:start_time][:hour]
    @start_minute = params[:start_time][:minute]
    @start_ampm = params[:start_time][:ampm]
    @start_time = Time.parse("2000-01-01 " + params[:start_time][:hour]+":"+params[:start_time][:minute]+ " " + params[:start_time][:ampm] + " -0000")
    @end_hour = params[:end_time][:hour]
    @end_minute = params[:end_time][:minute]
    @end_ampm = params[:end_time][:ampm]
    @end_time = Time.parse("2000-01-01 " + params[:end_time][:hour]+":"+params[:end_time][:minute]+ " " + params[:end_time][:ampm] + " -0000")
    time_range = @start_time..@end_time
    @cases = Case.where(time_occurred: time_range, date_occurred: date_range, type_of_incident: params[:incidents], weekday: params[:days])

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
    @expanded = params[:expanded]
  	render "show"
  end
  def show
    @days = Case::DAYS
    @expanded = "about-expand"
    @start_date = Date.new(2013, 5, 17)
    @end_date = Date.today
    @start_hour = "12"
    @start_minute = "00"
    @start_ampm = "AM"
    @end_hour = "11"
    @end_minute = "59"
    @end_ampm = "PM"
    @incidents = []
    @categories = Array.new
  	@cases = Case.all
  end
end
