module SessionsHelper

  # Logs in the particular user
  def log_in( user )
    session[ :user_id ] = user.id
  end

  # Return the current logged-in user (if any)
  def current_user
    @current_user ||= User.find_by_id( session[:user_id] )
  end
  
  # Return whether the current user is logged in
  def logged_in?
    !current_user.nil?
  end
  
end
