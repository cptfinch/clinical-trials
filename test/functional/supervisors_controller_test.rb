require File.dirname(__FILE__) + '/../test_helper'
require 'supervisors_controller'

# Re-raise errors caught by the controller.
class SupervisorsController; def rescue_action(e) raise e end; end

class SupervisorsControllerTest < Test::Unit::TestCase
  fixtures :supervisors

  def setup
    @controller = SupervisorsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:supervisors)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_supervisor
    assert_difference('Supervisor.count') do
      post :create, :supervisor => { }
    end

    assert_redirected_to supervisor_path(assigns(:supervisor))
  end

  def test_should_show_supervisor
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_supervisor
    put :update, :id => 1, :supervisor => { }
    assert_redirected_to supervisor_path(assigns(:supervisor))
  end

  def test_should_destroy_supervisor
    assert_difference('Supervisor.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to supervisors_path
  end
end
