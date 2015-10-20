require 'test_helper'

class MainlandsControllerTest < ActionController::TestCase
  setup do
    @mainland = mainlands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mainlands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mainland" do
    assert_difference('Mainland.count') do
      post :create, mainland: { name: @mainland.name, number_of_species: @mainland.number_of_species, project_id: @mainland.project_id }
    end

    assert_redirected_to mainland_path(assigns(:mainland))
  end

  test "should show mainland" do
    get :show, id: @mainland
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mainland
    assert_response :success
  end

  test "should update mainland" do
    patch :update, id: @mainland, mainland: { name: @mainland.name, number_of_species: @mainland.number_of_species, project_id: @mainland.project_id }
    assert_redirected_to mainland_path(assigns(:mainland))
  end

  test "should destroy mainland" do
    assert_difference('Mainland.count', -1) do
      delete :destroy, id: @mainland
    end

    assert_redirected_to mainlands_path
  end
end
