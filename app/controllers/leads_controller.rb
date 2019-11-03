class LeadsController < ApplicationController
  before_action :authorize, except: [:create]
  before_action :set_lead, only: [:show]
  
  def index 
    @leads = Lead.order('created_at DESC')
  end 

  def create 
    @lead = Lead.new(f_name: lead_params["f_name"], email: lead_params["email"], phone: lead_params["phone"], street_1: lead_params["street_1"], city: lead_params["city"], zip: lead_params["zip"], business_id: lead_params["business_id"])
    @lead = Lead.addContent(lead_params, @lead)
    if @lead.valid? 
      @lead.save 
      LeadMailer.with(lead: @lead).lead_email.deliver_now
      flash[:notice] = "Thank you for contacting #{@lead.business.name}. We will contact you shortly for a quote. If you need immediate help please call #{ActionController::Base.helpers.number_to_phone @lead.business.phone, area_code: true }"
      redirect_to root_path
    else 
      flash[:notice] = "fail"
      redirect_to root_path
    end
  end 

  def show  
  end

  def destroy 
    @lead = Lead.find(params[:id])
    @lead.destroy 
    redirect_to leads_path
  end 

  private

  def authorize
      @user = User.find_by(id: session[:current_user_id])
      redirect_to root_path	if !@user || !@user.admin
  end

  def lead_params
    params.require(:lead).permit(:f_name, :zip, :city, :street_1, :job_location, :business_id, :timeline, :email, :phone)
  end 

  def set_lead
    @lead = Lead.find(params[:id])
  end 
end
