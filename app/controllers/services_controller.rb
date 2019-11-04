class ServicesController < ApplicationController
  
  def index 
    @services = Service.all
  end 

  def new 
    @service = Service.new 
  end
  
  def create 
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service 
    else  
      render :new
    end
  end

  def edit 
    @service = Service.find(params[:id])
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

  private 
  def service_params
      params.require(:article).permit(:title, :text, :type) 
  end

end
