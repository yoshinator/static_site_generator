class LeadsController < ApplicationController
  def index 

  end 

  def create 
    @lead = Lead.new(params[:lead])
    if @lead.valid? 
      @lead.save 
      flash[:message] = "Successful submit request"
      redirect_to root_path
    end 
    flash[:error] = lead.errors
    redirect_to root_path
  end 
end
