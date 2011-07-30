module HomeHelper
  def login_pane
    unless logged_in?
      link_to 'Login with Google', login_url
    end
  end
end
