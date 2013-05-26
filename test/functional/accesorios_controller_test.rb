require 'test_helper'

class AccesoriosControllerTest < ActionController::TestCase
  setup do
    @accesorio = accesorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesorios)
  end

  test "should create accesorio" do
    assert_difference('Accesorio.count') do
      post :create, accesorio: { description: @accesorio.description, name: @accesorio.name, price: @accesorio.price }
    end

    assert_response 201
  end

  test "should show accesorio" do
    get :show, id: @accesorio
    assert_response :success
  end

  test "should update accesorio" do
    put :update, id: @accesorio, accesorio: { description: @accesorio.description, name: @accesorio.name, price: @accesorio.price }
    assert_response 204
  end

  test "should destroy accesorio" do
    assert_difference('Accesorio.count', -1) do
      delete :destroy, id: @accesorio
    end

    assert_response 204
  end
end
