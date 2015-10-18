require 'test_helper'

class IslandparametersControllerTest < ActionController::TestCase
  setup do
    @islandparameter = islandparameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:islandparameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create islandparameter" do
    assert_difference('Islandparameter.count') do
      post :create, islandparameter: {  }
    end

    assert_redirected_to islandparameter_path(assigns(:islandparameter))
  end

  test "should show islandparameter" do
    get :show, id: @islandparameter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @islandparameter
    assert_response :success
  end

  test "should update islandparameter" do
    patch :update, id: @islandparameter, islandparameter: {  }
    assert_redirected_to islandparameter_path(assigns(:islandparameter))
  end

  test "should destroy islandparameter" do
    assert_difference('Islandparameter.count', -1) do
      delete :destroy, id: @islandparameter
    end

    assert_redirected_to islandparameters_path
  end
end
