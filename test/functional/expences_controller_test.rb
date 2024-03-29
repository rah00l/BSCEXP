require 'test_helper'

class ExpencesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expence" do
    assert_difference('Expence.count') do
      post :create, :expence => { }
    end

    assert_redirected_to expence_path(assigns(:expence))
  end

  test "should show expence" do
    get :show, :id => expences(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => expences(:one).to_param
    assert_response :success
  end

  test "should update expence" do
    put :update, :id => expences(:one).to_param, :expence => { }
    assert_redirected_to expence_path(assigns(:expence))
  end

  test "should destroy expence" do
    assert_difference('Expence.count', -1) do
      delete :destroy, :id => expences(:one).to_param
    end

    assert_redirected_to expences_path
  end
end
