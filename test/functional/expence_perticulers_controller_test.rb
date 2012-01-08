require 'test_helper'

class ExpencePerticulersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expence_perticulers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expence_perticuler" do
    assert_difference('ExpencePerticuler.count') do
      post :create, :expence_perticuler => { }
    end

    assert_redirected_to expence_perticuler_path(assigns(:expence_perticuler))
  end

  test "should show expence_perticuler" do
    get :show, :id => expence_perticulers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => expence_perticulers(:one).to_param
    assert_response :success
  end

  test "should update expence_perticuler" do
    put :update, :id => expence_perticulers(:one).to_param, :expence_perticuler => { }
    assert_redirected_to expence_perticuler_path(assigns(:expence_perticuler))
  end

  test "should destroy expence_perticuler" do
    assert_difference('ExpencePerticuler.count', -1) do
      delete :destroy, :id => expence_perticulers(:one).to_param
    end

    assert_redirected_to expence_perticulers_path
  end
end
