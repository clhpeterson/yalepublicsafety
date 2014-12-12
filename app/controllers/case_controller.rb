class CaseController < ApplicationController
  def search
  	@cases = Case.all
  end
  def index
  	@cases = Case.all
  end
end
