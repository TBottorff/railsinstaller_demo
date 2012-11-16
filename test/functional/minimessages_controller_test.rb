require 'test_helper'

class MinimessagesControllerTest < ActionController::TestCase
  setup do
    @minimessage = minimessages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minimessages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minimessage" do
    assert_difference('Minimessage.count') do
      post :create, minimessage: { actualMessage: @minimessage.actualMessage, user_id: @minimessage.user_id }
    end

    assert_redirected_to minimessage_path(assigns(:minimessage))
  end

  test "should show minimessage" do
    get :show, id: @minimessage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @minimessage
    assert_response :success
  end

  test "should update minimessage" do
    put :update, id: @minimessage, minimessage: { actualMessage: @minimessage.actualMessage, user_id: @minimessage.user_id }
    assert_redirected_to minimessage_path(assigns(:minimessage))
  end

  test "should destroy minimessage" do
    assert_difference('Minimessage.count', -1) do
      delete :destroy, id: @minimessage
    end

    assert_redirected_to minimessages_path
  end
end
