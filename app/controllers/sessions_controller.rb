class SessionsController < ApplicationController
  def new
    redirect_to '/auth/google'
  end

  def create
    auth = request.env['omniauth.auth']
    user = User.find_by_uid(auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id

    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_url, notice: "Signed out!"
  end

  def failure
    redirect_to root_url, alert: "Authentication error: #{params[:message].humanize}"
  end

end
