require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get predphoto" do
    get :predphoto
    assert_response :success
  end

  test "should get studphoto" do
    get :studphoto
    assert_response :success
  end

  test "should get reportphoto" do
    get :reportphoto
    assert_response :success
  end

  test "should get interphoto" do
    get :interphoto
    assert_response :success
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
  end

  test "should get price" do
    get :price
    assert_response :success
  end

  test "should get articles" do
    get :articles
    assert_response :success
  end

end
