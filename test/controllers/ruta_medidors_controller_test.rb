require 'test_helper'

class RutaMedidorsControllerTest < ActionController::TestCase
  setup do
    @ruta_medidor = ruta_medidors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruta_medidors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruta_medidor" do
    assert_difference('RutaMedidor.count') do
      post :create, ruta_medidor: { medidor_id: @ruta_medidor.medidor_id, rutum_id: @ruta_medidor.rutum_id }
    end

    assert_redirected_to ruta_medidor_path(assigns(:ruta_medidor))
  end

  test "should show ruta_medidor" do
    get :show, id: @ruta_medidor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruta_medidor
    assert_response :success
  end

  test "should update ruta_medidor" do
    patch :update, id: @ruta_medidor, ruta_medidor: { medidor_id: @ruta_medidor.medidor_id, rutum_id: @ruta_medidor.rutum_id }
    assert_redirected_to ruta_medidor_path(assigns(:ruta_medidor))
  end

  test "should destroy ruta_medidor" do
    assert_difference('RutaMedidor.count', -1) do
      delete :destroy, id: @ruta_medidor
    end

    assert_redirected_to ruta_medidors_path
  end
end
