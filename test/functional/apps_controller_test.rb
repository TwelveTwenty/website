require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  test "should get uberlayer" do
    get :uberlayer
    assert_response :success
  end

  test "should get willitfit" do
    get :willitfit
    assert_response :success
  end

  test "should get gettogether" do
    get :gettogether
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
