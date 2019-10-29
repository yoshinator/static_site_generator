class ServicesController < ApplicationController
  
  def index 
    @services = Service.all
  end 
  
  def create 
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service 
    else  
      byebug
      render :new
    end
  end

  def show 
    @service = Service.find(params[:id])
  end

  private 
  def service_params
      params.require(:article).permit(:title, :text) 
  end

end
