require 'test_helper'

class SubestacionsControllerTest < ActionController::TestCase
  setup do
    @subestacion = subestacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subestacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subestacion" do
    assert_difference('Subestacion.count') do
      post :create, subestacion: { codigo: @subestacion.codigo, nombre: @subestacion.nombre }
    end

    assert_redirected_to subestacion_path(assigns(:subestacion))
  end

  test "should show subestacion" do
    get :show, id: @subestacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subestacion
    assert_response :success
  end

  test "should update subestacion" do
    patch :update, id: @subestacion, subestacion: { codigo: @subestacion.codigo, nombre: @subestacion.nombre }
    assert_redirected_to subestacion_path(assigns(:subestacion))
  end

  test "should destroy subestacion" do
    assert_difference('Subestacion.count', -1) do
      delete :destroy, id: @subestacion
    end

    assert_redirected_to subestacions_path
  end
end
