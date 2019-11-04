class BusinessesController < ApplicationController

  before_action :authorize
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  
  def index
    if  @user.super_user?
      @businesses = Business.all 
    else 
      @businesses = [@user.business]
    end
  end

  def new
    if @user.super_user?
      @business = Business.new
      render :new 
    else 
      redirect_to businesses_path
    end 
  end

  def create
    if @user.super_user?
    @business = Business.new(business_params)
      respond_to do |format|
        if @business.save
          format.html { redirect_to @business, notice: 'business was successfully created.' }
          format.json { render :show, status: :created, location: @business }
        else
          format.html { render :new }
          format.json { render json: @business.errors, status: :unprocessable_entity }
        end
      end
    else 
      redirect_to businesses_path
    end 
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @business.destroy
    respond_to do |format|
      format.html { redirect_to businesses_url, notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def authorize
      @user = User.find_by(id: session[:current_user_id])
      redirect_to root_path	if !@user || !@user.admin
  end

  def set_business
        @business = Business.find(params[:id])
        @business = @user.business if !@user.super_user?
  end

      # Never trust parameters from the scary internet, only allow the white list through.
  def business_params
    params.require(:business).permit(:name)
  end

end
