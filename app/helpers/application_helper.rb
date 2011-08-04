module ApplicationHelper
  def session_bar
    if logged_in?
      link_to "Log out, #{current_user.name}", logout_url
    end
  end
end
