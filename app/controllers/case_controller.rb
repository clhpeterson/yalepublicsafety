class CaseController < ApplicationController
  def search
  	if params[:type]
  		@cases = Case.where("type_of_incident = ?", params[:type].upcase)
  	else
  		@cases = Case.all
  	end
  	render "show"
  end
  def show
  	@cases = Case.all
  end
end
