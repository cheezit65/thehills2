require 'test_helper'

class WebOrdersControllerTest < ActionController::TestCase
  setup do
    @web_order = web_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_order" do
    assert_difference('WebOrder.count') do
      post :create, web_order: {  }
    end

    assert_redirected_to web_order_path(assigns(:web_order))
  end

  test "should show web_order" do
    get :show, id: @web_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_order
    assert_response :success
  end

  test "should update web_order" do
    patch :update, id: @web_order, web_order: {  }
    assert_redirected_to web_order_path(assigns(:web_order))
  end

  test "should destroy web_order" do
    assert_difference('WebOrder.count', -1) do
      delete :destroy, id: @web_order
    end

    assert_redirected_to web_orders_path
  end
end
