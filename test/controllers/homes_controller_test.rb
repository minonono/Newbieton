require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get roadmap" do
    get :roadmap
    assert_response :success
  end

  test "should get form" do
    get :form
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
