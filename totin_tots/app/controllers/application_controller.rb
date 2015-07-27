class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) 
    else
      @current_user ||= User.new
    end
  end


  def require_login
    unless session[:user]
      redirect_to login_url
      return false
    end
  end

end
