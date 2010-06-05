require 'test_helper'

class HeroConsControllerTest < ActionController::TestCase
  setup do
    @hero_con = hero_cons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hero_cons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hero_con" do
    assert_difference('HeroCon.count') do
      post :create, :hero_con => @hero_con.attributes
    end

    assert_redirected_to hero_con_path(assigns(:hero_con))
  end

  test "should show hero_con" do
    get :show, :id => @hero_con.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hero_con.to_param
    assert_response :success
  end

  test "should update hero_con" do
    put :update, :id => @hero_con.to_param, :hero_con => @hero_con.attributes
    assert_redirected_to hero_con_path(assigns(:hero_con))
  end

  test "should destroy hero_con" do
    assert_difference('HeroCon.count', -1) do
      delete :destroy, :id => @hero_con.to_param
    end

    assert_redirected_to hero_cons_path
  end
end
