require 'test_helper'

class LandingPageConfigsControllerTest < ActionController::TestCase
  setup do
    @landing_page_config = landing_page_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landing_page_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landing_page_config" do
    assert_difference('LandingPageConfig.count') do
      post :create, landing_page_config: { description: @landing_page_config.description, fa_icon: @landing_page_config.fa_icon, header: @landing_page_config.header }
    end

    assert_redirected_to landing_page_config_path(assigns(:landing_page_config))
  end

  test "should show landing_page_config" do
    get :show, id: @landing_page_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landing_page_config
    assert_response :success
  end

  test "should update landing_page_config" do
    patch :update, id: @landing_page_config, landing_page_config: { description: @landing_page_config.description, fa_icon: @landing_page_config.fa_icon, header: @landing_page_config.header }
    assert_redirected_to landing_page_config_path(assigns(:landing_page_config))
  end

  test "should destroy landing_page_config" do
    assert_difference('LandingPageConfig.count', -1) do
      delete :destroy, id: @landing_page_config
    end

    assert_redirected_to landing_page_configs_path
  end
end
