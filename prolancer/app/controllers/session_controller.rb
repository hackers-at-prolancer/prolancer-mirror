class SessionController < ApplicationController
  def create
    user = env["omniauth.auth"]
    session[:user_id ] = user.id
    redirect_to root_url, :notice => "Successfully loggeed in."
  end
  def destroy

    session[:user_id ] = nil
    redirect_to root_url, :notice => "Successfully loggeed out."
  end
end
