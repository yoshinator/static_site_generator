class SessionsController < ApplicationController
    def googleAuth
        # Get access tokens from the google server
        access_token = request.env["omniauth.auth"]
        user = User.from_omniauth(access_token)
        user.save
        log_in(user)
        
        # Access_token is used to authenticate request made from the rails application to the google server
        #user.google_token = access_token.credentials.token
        
        # Refresh_token to request new access_token
        # Note: Refresh_token is only sent once during the first request
        refresh_token = access_token.credentials.refresh_token
        user.google_refresh_token = refresh_token if refresh_token.present?
        user.save
        redirect_to root_path
  end

  def log_in(user)
    payload = { data: user }


    token = JWT.encode payload, ENV['HMAC_SECRET'], 'HS256'

    # eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjoidGVzdCJ9.pNIWIL34Jo13LViZAJACzK6Yf0qnvT_BuwOxiMCPE-Y
    puts token

    decoded_token = JWT.decode token, ENV['HMAC_SECRET'], true, { algorithm: 'HS256' }

    # Array
    # [
    #   {"data"=>"test"}, # payload
    #   {"alg"=>"HS256"} # header
    # ]
    puts "The token is #{token}"
    puts "The decoded token is #{decoded_token}"
  end


end
