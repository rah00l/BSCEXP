require 'test_helper'

class ExpPerticulersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exp_perticulers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exp_perticuler" do
    assert_difference('ExpPerticuler.count') do
      post :create, :exp_perticuler => { }
    end

    assert_redirected_to exp_perticuler_path(assigns(:exp_perticuler))
  end

  test "should show exp_perticuler" do
    get :show, :id => exp_perticulers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => exp_perticulers(:one).to_param
    assert_response :success
  end

  test "should update exp_perticuler" do
    put :update, :id => exp_perticulers(:one).to_param, :exp_perticuler => { }
    assert_redirected_to exp_perticuler_path(assigns(:exp_perticuler))
  end

  test "should destroy exp_perticuler" do
    assert_difference('ExpPerticuler.count', -1) do
      delete :destroy, :id => exp_perticulers(:one).to_param
    end

    assert_redirected_to exp_perticulers_path
  end
end
