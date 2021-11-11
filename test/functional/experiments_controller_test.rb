require File.dirname(__FILE__) + '/../test_helper'
require 'experiments_controller'

# Re-raise errors caught by the controller.
class ExperimentsController; def rescue_action(e) raise e end; end

class ExperimentsControllerTest < Test::Unit::TestCase
  fixtures :experiments

  def setup
    @controller = ExperimentsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:experiments)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_experiment
    assert_difference('Experiment.count') do
      post :create, :experiment => { }
    end

    assert_redirected_to experiment_path(assigns(:experiment))
  end

  def test_should_show_experiment
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_experiment
    put :update, :id => 1, :experiment => { }
    assert_redirected_to experiment_path(assigns(:experiment))
  end

  def test_should_destroy_experiment
    assert_difference('Experiment.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to experiments_path
  end
end
