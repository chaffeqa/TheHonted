require 'test_helper'

class StrategyGuidesControllerTest < ActionController::TestCase
  setup do
    @strategy_guide = strategy_guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strategy_guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strategy_guide" do
    assert_difference('StrategyGuide.count') do
      post :create, :strategy_guide => @strategy_guide.attributes
    end

    assert_redirected_to strategy_guide_path(assigns(:strategy_guide))
  end

  test "should show strategy_guide" do
    get :show, :id => @strategy_guide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @strategy_guide.to_param
    assert_response :success
  end

  test "should update strategy_guide" do
    put :update, :id => @strategy_guide.to_param, :strategy_guide => @strategy_guide.attributes
    assert_redirected_to strategy_guide_path(assigns(:strategy_guide))
  end

  test "should destroy strategy_guide" do
    assert_difference('StrategyGuide.count', -1) do
      delete :destroy, :id => @strategy_guide.to_param
    end

    assert_redirected_to strategy_guides_path
  end
end
