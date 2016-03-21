require 'test_helper'

class WebCustomersControllerTest < ActionController::TestCase
  setup do
    @web_customer = web_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_customer" do
    assert_difference('WebCustomer.count') do
      post :create, web_customer: {  }
    end

    assert_redirected_to web_customer_path(assigns(:web_customer))
  end

  test "should show web_customer" do
    get :show, id: @web_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_customer
    assert_response :success
  end

  test "should update web_customer" do
    patch :update, id: @web_customer, web_customer: {  }
    assert_redirected_to web_customer_path(assigns(:web_customer))
  end

  test "should destroy web_customer" do
    assert_difference('WebCustomer.count', -1) do
      delete :destroy, id: @web_customer
    end

    assert_redirected_to web_customers_path
  end
end
