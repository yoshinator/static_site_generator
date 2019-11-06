class CitiesController < ApplicationController

  before_action :authorize, except: [:index]
  
  # http://localhost:3000/cities?starts_with=B
  # http://localhost:3000/cities?county=hudson
  # http://localhost:3000/cities?county=Hudson&starts_with=B
  def index
    @cities = City.where(nil)
    filtering_params(params).each do |key, value|
      @cities = @cities.public_send(key, value) if value.present?
    end
  end

  def show 

  end

  def new 

  end 

  def create 

  end 

  def edit 

  end 

  def update 

  end

  def create 

  end 

  def destroy 

  end 

    def link_city 
    params[:city_ids].each do |id|
      @user.business.cities << City.find(id.to_i)
    end 
    redirect_to business_path @user.business
  end 

  def unlink_city
    params[:city_ids].each do |id|
      city = City.find(id.to_i)
      @user.business.cities.delete(city)
    end 
    redirect_to business_path @user.business
  end 

  private 
  def authorize 
    @user = User.find_by(id: session[:current_user_id])
    redirect_to cities_path if !@user.super_user && !@user.admin
  end

  def city_params
    params.require(:city).permit(:county, :state, :name, :city_ids)
  end 

  # A list of the param names that can be used for filtering the Product list
  def filtering_params(params)
    params.slice(:state, :county, :starts_with)
  end

end
