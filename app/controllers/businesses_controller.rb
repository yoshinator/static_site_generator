class BusinessesController < ApplicationController

  before_action :authorize
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def authorize
      @user = User.find_by(id: session[:current_user_id])
      redirect_to root_path	if !@user || !@user.admin
  end

end
