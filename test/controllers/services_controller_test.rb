require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { content_principal_content: @service.content_principal_content, content_principal_title: @service.content_principal_title, content_segundario_content: @service.content_segundario_content, content_segundario_title: @service.content_segundario_title, principal_image: @service.principal_image, principal_subtitle: @service.principal_subtitle, principal_title: @service.principal_title, service_one_content: @service.service_one_content, service_one_image: @service.service_one_image, service_one_title: @service.service_one_title, service_subtitle: @service.service_subtitle, service_three_content: @service.service_three_content, service_three_image: @service.service_three_image, service_three_title: @service.service_three_title, service_title: @service.service_title, service_two_content: @service.service_two_content, service_two_image: @service.service_two_image, service_two_title: @service.service_two_title, tab_five_content: @service.tab_five_content, tab_five_image: @service.tab_five_image, tab_five_title: @service.tab_five_title, tab_four_content: @service.tab_four_content, tab_four_image: @service.tab_four_image, tab_four_title: @service.tab_four_title, tab_one_content: @service.tab_one_content, tab_one_image: @service.tab_one_image, tab_one_title: @service.tab_one_title, tab_three_content: @service.tab_three_content, tab_three_image: @service.tab_three_image, tab_three_title: @service.tab_three_title, tab_two_content: @service.tab_two_content, tab_two_image: @service.tab_two_image, tab_two_title: @service.tab_two_title }
    end

    assert_redirected_to service_path(assigns(:service))
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service
    assert_response :success
  end

  test "should update service" do
    patch :update, id: @service, service: { content_principal_content: @service.content_principal_content, content_principal_title: @service.content_principal_title, content_segundario_content: @service.content_segundario_content, content_segundario_title: @service.content_segundario_title, principal_image: @service.principal_image, principal_subtitle: @service.principal_subtitle, principal_title: @service.principal_title, service_one_content: @service.service_one_content, service_one_image: @service.service_one_image, service_one_title: @service.service_one_title, service_subtitle: @service.service_subtitle, service_three_content: @service.service_three_content, service_three_image: @service.service_three_image, service_three_title: @service.service_three_title, service_title: @service.service_title, service_two_content: @service.service_two_content, service_two_image: @service.service_two_image, service_two_title: @service.service_two_title, tab_five_content: @service.tab_five_content, tab_five_image: @service.tab_five_image, tab_five_title: @service.tab_five_title, tab_four_content: @service.tab_four_content, tab_four_image: @service.tab_four_image, tab_four_title: @service.tab_four_title, tab_one_content: @service.tab_one_content, tab_one_image: @service.tab_one_image, tab_one_title: @service.tab_one_title, tab_three_content: @service.tab_three_content, tab_three_image: @service.tab_three_image, tab_three_title: @service.tab_three_title, tab_two_content: @service.tab_two_content, tab_two_image: @service.tab_two_image, tab_two_title: @service.tab_two_title }
    assert_redirected_to service_path(assigns(:service))
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_redirected_to services_path
  end
end
