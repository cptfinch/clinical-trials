require File.dirname(__FILE__) + '/../test_helper'
require 'members_controller'

# Re-raise errors caught by the controller.
class MembersController; def rescue_action(e) raise e end; end

class MembersControllerTest < Test::Unit::TestCase
  fixtures :members

  def setup
    @controller = MembersController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:members)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_member
    assert_difference('Member.count') do
      post :create, :member => { }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  def test_should_show_member
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_member
    put :update, :id => 1, :member => { }
    assert_redirected_to member_path(assigns(:member))
  end

  def test_should_destroy_member
    assert_difference('Member.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to members_path
  end
end
