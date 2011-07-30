class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def require_logged_in
    unless current_user
      store_location
      redirect_to root_url, error: "You must be logged-in to access this page"
      return false
    end
  end

  private
  def store_location
    session[:return_to] = request.url
  end

  def redirect_back_or_to_root
    redirect_to(session[:return_to] || root_url)
    session[:return_to] = nil
  end
end
