module ApplicationHelper
  def session_bar
    link_to 'Log out', logout_url if logged_in?
  end
end
