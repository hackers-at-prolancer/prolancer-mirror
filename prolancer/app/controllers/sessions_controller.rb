class SessionsController < ApplicationController


  def create_from_facebook
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    session[:user_image] = user.image_url
    session[:user_name] = user.name
    redirect_to root_url
  end

  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      redirect_to '/welcome/home'
    else
      redirect_to login_url, alert: "Incorrect user name and password"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_image] = nil
    session[:user_name] = nil
    redirect_to root_url
  end
end
