require 'test_helper'

class WebOrderDetailsControllerTest < ActionController::TestCase
  setup do
    @web_order_detail = web_order_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_order_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_order_detail" do
    assert_difference('WebOrderDetail.count') do
      post :create, web_order_detail: {  }
    end

    assert_redirected_to web_order_detail_path(assigns(:web_order_detail))
  end

  test "should show web_order_detail" do
    get :show, id: @web_order_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_order_detail
    assert_response :success
  end

  test "should update web_order_detail" do
    patch :update, id: @web_order_detail, web_order_detail: {  }
    assert_redirected_to web_order_detail_path(assigns(:web_order_detail))
  end

  test "should destroy web_order_detail" do
    assert_difference('WebOrderDetail.count', -1) do
      delete :destroy, id: @web_order_detail
    end

    assert_redirected_to web_order_details_path
  end
end
