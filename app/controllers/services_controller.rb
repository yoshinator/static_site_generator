class ServicesController < ApplicationController

  before_action :authorize

  def index 
    @services = Service.all
  end 

  def new 
    @service = Service.new 
    @service.blocks.build
  end

  def create 
    byebug
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service 
    else  
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
    @service.blocks.build
  end

  def update 
    @service = Service.find(params[:id])
    if @service.update(service_params)
      flash[:notice] = "Succesfully updated service"
      redirect_to @service
    else
      flash[:notice] = "Sorry something went wrong and we couldn't edit the service"
      render edit_service_path(@service)
    end
  end 

  def show 
    @service = Service.find(params[:id])
  end

  def link_business
    params[:service_ids].each do |id|
      # byebug @business_services.create(service_id: business_id:)
      @user.business.services << Service.find(id.to_i)
    end 
    redirect_to services_path
  end 

  def unlink_business
    params[:service_ids].each do |id|
      service = Service.find(id.to_i)
      @user.business.services.delete(service)
    end 
    redirect_to services_path
  end 

  private 
  def authorize
      @user = User.find_by(id: session[:current_user_id])
      redirect_to root_path	if !@user || !@user.admin
  end

  def service_params
      params.require(:article).permit(:title,  :type, :service_ids, 
                    blocks_attributes: Block.attribute_names.map(&:to_sym).push(:_destroy, :text)) 
  end

end
