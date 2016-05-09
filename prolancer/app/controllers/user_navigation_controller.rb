class UserNavigationController < ApplicationController
  def landing
    @landing_page_configs = LandingPageConfig.all
  end
end
