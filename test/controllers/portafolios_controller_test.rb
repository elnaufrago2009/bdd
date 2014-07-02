require 'test_helper'

class PortafoliosControllerTest < ActionController::TestCase
  setup do
    @portafolio = portafolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portafolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portafolio" do
    assert_difference('Portafolio.count') do
      post :create, portafolio: { content: @portafolio.content, content_resumen: @portafolio.content_resumen, image_portafolio_big: @portafolio.image_portafolio_big, image_portafolio_medium: @portafolio.image_portafolio_medium, image_portafolio_small: @portafolio.image_portafolio_small, subtitle: @portafolio.subtitle, title: @portafolio.title }
    end

    assert_redirected_to portafolio_path(assigns(:portafolio))
  end

  test "should show portafolio" do
    get :show, id: @portafolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portafolio
    assert_response :success
  end

  test "should update portafolio" do
    patch :update, id: @portafolio, portafolio: { content: @portafolio.content, content_resumen: @portafolio.content_resumen, image_portafolio_big: @portafolio.image_portafolio_big, image_portafolio_medium: @portafolio.image_portafolio_medium, image_portafolio_small: @portafolio.image_portafolio_small, subtitle: @portafolio.subtitle, title: @portafolio.title }
    assert_redirected_to portafolio_path(assigns(:portafolio))
  end

  test "should destroy portafolio" do
    assert_difference('Portafolio.count', -1) do
      delete :destroy, id: @portafolio
    end

    assert_redirected_to portafolios_path
  end
end
