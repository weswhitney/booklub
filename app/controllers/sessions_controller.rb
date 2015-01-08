class SessionsController < ApplicationController

    def create
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      else
        @sign_in_error = "Username / password combination is invalid"
        redirect_to root_path
      end
    end

    def twitter_authenticate
      # @user = User.find_or_create_from_auth_hash(auth_hash)
      # self.current_user = @user
      # redirect_to '/'
    end



  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
