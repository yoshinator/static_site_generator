class LeadsController < ApplicationController
  
  def index 
  end 

  def create 
    fail
    @lead = Lead.new(params[:lead])
    if @lead.valid? 
      @lead.save 
      flash[:message] = "Successful submit request"
      redirect_to root_path
    end 
    flash[:error] = lead.errors
    redirect_to root_path
  end 

  private
  def lead_params
    params.require(:lead).permit(:f_name, :zip, :city, :street_1, :job_location, :time_line)
  end 
end
