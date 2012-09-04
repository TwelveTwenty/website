class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  protected
  def authenticate
    unless current_user
      redirect_to root_url
      false
    end
    true
  end

  helper_method :current_user
end
