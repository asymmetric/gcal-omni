module ApplicationHelper
  def session_bar
    if logged_in?
      "Welcome, #{current_user.name}"
    else
      link_to 'Log out', logout_url
    end
  end
end
