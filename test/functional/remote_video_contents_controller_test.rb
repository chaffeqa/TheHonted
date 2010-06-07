require 'test_helper'

class RemoteVideoContentsControllerTest < ActionController::TestCase
  setup do
    @remote_video_content = remote_video_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remote_video_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remote_video_content" do
    assert_difference('RemoteVideoContent.count') do
      post :create, :remote_video_content => @remote_video_content.attributes
    end

    assert_redirected_to remote_video_content_path(assigns(:remote_video_content))
  end

  test "should show remote_video_content" do
    get :show, :id => @remote_video_content.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @remote_video_content.to_param
    assert_response :success
  end

  test "should update remote_video_content" do
    put :update, :id => @remote_video_content.to_param, :remote_video_content => @remote_video_content.attributes
    assert_redirected_to remote_video_content_path(assigns(:remote_video_content))
  end

  test "should destroy remote_video_content" do
    assert_difference('RemoteVideoContent.count', -1) do
      delete :destroy, :id => @remote_video_content.to_param
    end

    assert_redirected_to remote_video_contents_path
  end
end
