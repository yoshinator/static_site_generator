class PagesController < ApplicationController

    before_action :authorize, except: [:index]
    def index 
    end

    def show
    end

    def new
    end

    private
    def authorize
        @user = User.find_by(id: session[:current_user_id])
        redirect_to root_path	if !@user || !@user.admin
    end

end
