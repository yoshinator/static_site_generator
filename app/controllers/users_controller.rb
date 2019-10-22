class UsersController < ApplicationController
  before_action :set_user, only: [:index, :show, :new, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
      @users = User.all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: 'User was successfully created.' 
      else
        render :new 
      end
  end 

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # PATCH/PUT /users/1
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit 
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(id: session[:current_user_id])
      redirect_to root_path if !@user || !@user.admin
      @user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :username, :admin, :business_id)
    end
end
