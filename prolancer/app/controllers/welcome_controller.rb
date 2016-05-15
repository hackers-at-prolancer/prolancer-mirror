class WelcomeController < ApplicationController

  skip_before_filter :check_auth

  def home
  end

end
