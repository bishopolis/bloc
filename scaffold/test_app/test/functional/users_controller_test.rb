require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get find_user" do
    get :find_user
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end