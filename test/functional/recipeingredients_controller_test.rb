require 'test_helper'

class RecipeingredientsControllerTest < ActionController::TestCase
  setup do
    @recipeingredient = recipeingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipeingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipeingredient" do
    assert_difference('Recipeingredient.count') do
      post :create, recipeingredient: { measurement_unit: @recipeingredient.measurement_unit, quantity: @recipeingredient.quantity, resources: @recipeingredient.resources, resources: @recipeingredient.resources }
    end

    assert_redirected_to recipeingredient_path(assigns(:recipeingredient))
  end

  test "should show recipeingredient" do
    get :show, id: @recipeingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipeingredient
    assert_response :success
  end

  test "should update recipeingredient" do
    put :update, id: @recipeingredient, recipeingredient: { measurement_unit: @recipeingredient.measurement_unit, quantity: @recipeingredient.quantity, resources: @recipeingredient.resources, resources: @recipeingredient.resources }
    assert_redirected_to recipeingredient_path(assigns(:recipeingredient))
  end

  test "should destroy recipeingredient" do
    assert_difference('Recipeingredient.count', -1) do
      delete :destroy, id: @recipeingredient
    end

    assert_redirected_to recipeingredients_path
  end
end
