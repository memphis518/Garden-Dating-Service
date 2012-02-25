require 'test_helper'

class GardenControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
