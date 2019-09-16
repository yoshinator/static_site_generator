class SessionsController < ApplicationController
    def googleAuth
        # Get access tokens from the google server
        access_token = request.env["omniauth.auth"]
        user = User.from_omniauth(access_token)
        create_session(user)
        # Access_token is used to authenticate request made from the rails application to the google server
        #user.google_token = access_token.credentials.token

        refresh_token = access_token.credentials.refresh_token
        user.google_refresh_token = refresh_token if refresh_token.present?
        if User.all.length == 0
            user.admin = true
        end
        user.save
        redirect_to root_path
    end

    def create_session(user)
        session[:current_user_id] = user.id
    end


    def destroy
        session[:current_user_id] = nil
        redirect_to root_path
    end 
end
