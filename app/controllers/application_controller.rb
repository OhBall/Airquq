class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
    !!current_user
  end 

  def log_in(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end 

  def log_out 
    current_user.reset_session_token!
    session[:session_token] = nil
    @current_user = nil
  end 

  def require_log_in
    unless logged_in?
      render json: { base: ['Please log in before using this feature'] }, status: 401
    end 
  end 
end
