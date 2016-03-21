require 'test_helper'

class BligsControllerTest < ActionController::TestCase
  setup do
    @blig = bligs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bligs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blig" do
    assert_difference('Blig.count') do
      post :create, blig: { content: @blig.content, title: @blig.title }
    end

    assert_redirected_to blig_path(assigns(:blig))
  end

  test "should show blig" do
    get :show, id: @blig
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blig
    assert_response :success
  end

  test "should update blig" do
    patch :update, id: @blig, blig: { content: @blig.content, title: @blig.title }
    assert_redirected_to blig_path(assigns(:blig))
  end

  test "should destroy blig" do
    assert_difference('Blig.count', -1) do
      delete :destroy, id: @blig
    end

    assert_redirected_to bligs_path
  end
end
