require 'test_helper'

class SkillBuildsControllerTest < ActionController::TestCase
  setup do
    @skill_build = skill_builds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_builds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_build" do
    assert_difference('SkillBuild.count') do
      post :create, :skill_build => @skill_build.attributes
    end

    assert_redirected_to skill_build_path(assigns(:skill_build))
  end

  test "should show skill_build" do
    get :show, :id => @skill_build.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skill_build.to_param
    assert_response :success
  end

  test "should update skill_build" do
    put :update, :id => @skill_build.to_param, :skill_build => @skill_build.attributes
    assert_redirected_to skill_build_path(assigns(:skill_build))
  end

  test "should destroy skill_build" do
    assert_difference('SkillBuild.count', -1) do
      delete :destroy, :id => @skill_build.to_param
    end

    assert_redirected_to skill_builds_path
  end
end
