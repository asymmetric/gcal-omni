class HomeController < ApplicationController
  def index
    if logged_in?
      render action: 'home'
    else
      render action: 'login'
    end
  end

end
