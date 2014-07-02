require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { code: @contact.code, content_content: @contact.content_content, content_title: @contact.content_title, data_direction: @contact.data_direction, data_email: @contact.data_email, data_facebook: @contact.data_facebook, data_googlemas: @contact.data_googlemas, data_linkedln: @contact.data_linkedln, data_phone: @contact.data_phone, data_subtitle: @contact.data_subtitle, data_time: @contact.data_time, data_title: @contact.data_title, data_twitter: @contact.data_twitter, subtitle: @contact.subtitle, title: @contact.title }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { code: @contact.code, content_content: @contact.content_content, content_title: @contact.content_title, data_direction: @contact.data_direction, data_email: @contact.data_email, data_facebook: @contact.data_facebook, data_googlemas: @contact.data_googlemas, data_linkedln: @contact.data_linkedln, data_phone: @contact.data_phone, data_subtitle: @contact.data_subtitle, data_time: @contact.data_time, data_title: @contact.data_title, data_twitter: @contact.data_twitter, subtitle: @contact.subtitle, title: @contact.title }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
