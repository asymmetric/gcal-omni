class SessionsController < ApplicationController
  def new
  end

  def create
    render text: request.env['rack.auth'].inspect
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def failure
  end

end
