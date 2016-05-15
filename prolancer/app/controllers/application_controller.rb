class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :check_auth

  protect_from_forgery with: :exception
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def check_auth
    if session[:user_id].nil?
      redirect_to root_path, :flash => { :error => "Insufficient rights!" }
    end
  end

  helper_method :current_user, :check_auth
end
