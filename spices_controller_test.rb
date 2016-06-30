require 'test_helper'

class SpicesControllerTest < ActionController::TestCase
  setup do
    @spice = spices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spice" do
    assert_difference('Spice.count') do
      post :create, spice: { quantity: @spice.quantity, reorder: @spice.reorder, scale: @spice.scale, spicename: @spice.spicename, supplier: @spice.supplier }
    end

    assert_redirected_to spice_path(assigns(:spice))
  end

  test "should show spice" do
    get :show, id: @spice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spice
    assert_response :success
  end

  test "should update spice" do
    patch :update, id: @spice, spice: { quantity: @spice.quantity, reorder: @spice.reorder, scale: @spice.scale, spicename: @spice.spicename, supplier: @spice.supplier }
    assert_redirected_to spice_path(assigns(:spice))
  end

  test "should destroy spice" do
    assert_difference('Spice.count', -1) do
      delete :destroy, id: @spice
    end

    assert_redirected_to spices_path
  end
end
