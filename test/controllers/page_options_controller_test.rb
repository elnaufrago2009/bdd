require 'test_helper'

class PageOptionsControllerTest < ActionController::TestCase
  setup do
    @page_option = page_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_option" do
    assert_difference('PageOption.count') do
      post :create, page_option: { footer_left: @page_option.footer_left, footer_right: @page_option.footer_right, image_option_logo: @page_option.image_option_logo, subtitle: @page_option.subtitle, title: @page_option.title }
    end

    assert_redirected_to page_option_path(assigns(:page_option))
  end

  test "should show page_option" do
    get :show, id: @page_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_option
    assert_response :success
  end

  test "should update page_option" do
    patch :update, id: @page_option, page_option: { footer_left: @page_option.footer_left, footer_right: @page_option.footer_right, image_option_logo: @page_option.image_option_logo, subtitle: @page_option.subtitle, title: @page_option.title }
    assert_redirected_to page_option_path(assigns(:page_option))
  end

  test "should destroy page_option" do
    assert_difference('PageOption.count', -1) do
      delete :destroy, id: @page_option
    end

    assert_redirected_to page_options_path
  end
end
