require File.dirname(__FILE__) + '/../test_helper'
require 'trials_controller'

# Re-raise errors caught by the controller.
class TrialsController; def rescue_action(e) raise e end; end

class TrialsControllerTest < Test::Unit::TestCase
  fixtures :trials

  def setup
    @controller = TrialsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:trials)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_trial
    assert_difference('Trial.count') do
      post :create, :trial => { }
    end

    assert_redirected_to trial_path(assigns(:trial))
  end

  def test_should_show_trial
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_trial
    put :update, :id => 1, :trial => { }
    assert_redirected_to trial_path(assigns(:trial))
  end

  def test_should_destroy_trial
    assert_difference('Trial.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to trials_path
  end
end
