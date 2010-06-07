require 'test_helper'

class RemoteImageContentsControllerTest < ActionController::TestCase
  setup do
    @remote_image_content = remote_image_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remote_image_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remote_image_content" do
    assert_difference('RemoteImageContent.count') do
      post :create, :remote_image_content => @remote_image_content.attributes
    end

    assert_redirected_to remote_image_content_path(assigns(:remote_image_content))
  end

  test "should show remote_image_content" do
    get :show, :id => @remote_image_content.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @remote_image_content.to_param
    assert_response :success
  end

  test "should update remote_image_content" do
    put :update, :id => @remote_image_content.to_param, :remote_image_content => @remote_image_content.attributes
    assert_redirected_to remote_image_content_path(assigns(:remote_image_content))
  end

  test "should destroy remote_image_content" do
    assert_difference('RemoteImageContent.count', -1) do
      delete :destroy, :id => @remote_image_content.to_param
    end

    assert_redirected_to remote_image_contents_path
  end
end
