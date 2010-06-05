require 'test_helper'

class HeroProsControllerTest < ActionController::TestCase
  setup do
    @hero_pro = hero_pros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hero_pros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hero_pro" do
    assert_difference('HeroPro.count') do
      post :create, :hero_pro => @hero_pro.attributes
    end

    assert_redirected_to hero_pro_path(assigns(:hero_pro))
  end

  test "should show hero_pro" do
    get :show, :id => @hero_pro.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hero_pro.to_param
    assert_response :success
  end

  test "should update hero_pro" do
    put :update, :id => @hero_pro.to_param, :hero_pro => @hero_pro.attributes
    assert_redirected_to hero_pro_path(assigns(:hero_pro))
  end

  test "should destroy hero_pro" do
    assert_difference('HeroPro.count', -1) do
      delete :destroy, :id => @hero_pro.to_param
    end

    assert_redirected_to hero_pros_path
  end
end
