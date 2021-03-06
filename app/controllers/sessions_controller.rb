class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    @authorization = Authorization.find_by_provider_and_uid(
      auth_hash["provider"],
      auth_hash["uid"]
    )
    if @authorization
      session[:user_id] = @authorization.user.id
      redirect_to dashboard_path(@authorization.user.id)
    else
      user = User.new(username: auth_hash["info"]["name"])
      user.authorizations.build(
        provider: auth_hash["provider"],
        uid: auth_hash["uid"]
      )
      user.save
      session[:user_id] = user.id

      redirect_to dashboard_path(user.id)
    end
  end

  def log_out
    session.clear
    redirect_to root_path, notice: "you have successfully logged out"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
