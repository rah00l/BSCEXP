require 'test_helper'

class ExpsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exp" do
    assert_difference('Exp.count') do
      post :create, :exp => { }
    end

    assert_redirected_to exp_path(assigns(:exp))
  end

  test "should show exp" do
    get :show, :id => exps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => exps(:one).to_param
    assert_response :success
  end

  test "should update exp" do
    put :update, :id => exps(:one).to_param, :exp => { }
    assert_redirected_to exp_path(assigns(:exp))
  end

  test "should destroy exp" do
    assert_difference('Exp.count', -1) do
      delete :destroy, :id => exps(:one).to_param
    end

    assert_redirected_to exps_path
  end
end
