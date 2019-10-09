class LeadsController < ApplicationController
  before_action :set_lead, only: [:show]
  
  def index 
    @leads = Lead.all
  end 

  def create 
    @lead = Lead.new(f_name: lead_params["f_name"], email: lead_params["email"], phone: lead_params["phone"], street_1: lead_params["street_1"], city: lead_params["city"], zip: lead_params["zip"], business_id: lead_params["business_id"])
    @lead.addContent(lead_params)
    if @lead.valid? 
      @lead.save 
      flash[:notice] = "success"
      redirect_to root_path
    else 
      flash[:notice] = "fail"
      redirect_to root_path
    end
  end 

  def show  
  end

  private
  def lead_params
    params.require(:lead).permit(:f_name, :zip, :city, :street_1, :job_location, :business_id, :timeline, :email, :phone)
  end 

  def set_lead
    @lead = Lead.find(params[:id])
  end 
end
