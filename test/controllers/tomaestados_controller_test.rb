require 'test_helper'

class TomaestadosControllerTest < ActionController::TestCase
  setup do
    @tomaestado = tomaestados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tomaestados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tomaestado" do
    assert_difference('Tomaestado.count') do
      post :create, tomaestado: { apellido: @tomaestado.apellido, dni: @tomaestado.dni, nombre: @tomaestado.nombre }
    end

    assert_redirected_to tomaestado_path(assigns(:tomaestado))
  end

  test "should show tomaestado" do
    get :show, id: @tomaestado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tomaestado
    assert_response :success
  end

  test "should update tomaestado" do
    patch :update, id: @tomaestado, tomaestado: { apellido: @tomaestado.apellido, dni: @tomaestado.dni, nombre: @tomaestado.nombre }
    assert_redirected_to tomaestado_path(assigns(:tomaestado))
  end

  test "should destroy tomaestado" do
    assert_difference('Tomaestado.count', -1) do
      delete :destroy, id: @tomaestado
    end

    assert_redirected_to tomaestados_path
  end
end
