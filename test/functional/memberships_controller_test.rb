require File.dirname(__FILE__) + '/../test_helper'
require 'memberships_controller'

# Re-raise errors caught by the controller.
class MembershipsController; def rescue_action(e) raise e end; end

class MembershipsControllerTest < Test::Unit::TestCase
  fixtures :memberships

  def setup
    @controller = MembershipsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:memberships)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_membership
    assert_difference('Membership.count') do
      post :create, :membership => { }
    end

    assert_redirected_to membership_path(assigns(:membership))
  end

  def test_should_show_membership
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_membership
    put :update, :id => 1, :membership => { }
    assert_redirected_to membership_path(assigns(:membership))
  end

  def test_should_destroy_membership
    assert_difference('Membership.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to memberships_path
  end
end
