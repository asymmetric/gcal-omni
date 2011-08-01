module ApplicationHelper
  def session_bar
    if logged_in?
      link_to 'Log out', logout_url
    end
  end
end
