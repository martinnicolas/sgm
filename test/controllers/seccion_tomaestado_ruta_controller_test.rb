require 'test_helper'

class SeccionTomaestadoRutaControllerTest < ActionController::TestCase
  setup do
    @seccion_tomaestado_rutum = seccion_tomaestado_ruta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seccion_tomaestado_ruta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seccion_tomaestado_rutum" do
    assert_difference('SeccionTomaestadoRutum.count') do
      post :create, seccion_tomaestado_rutum: { fecha_fin: @seccion_tomaestado_rutum.fecha_fin, fecha_inicio: @seccion_tomaestado_rutum.fecha_inicio, rutum_id: @seccion_tomaestado_rutum.rutum_id, seccion_id: @seccion_tomaestado_rutum.seccion_id, tomaestado_id: @seccion_tomaestado_rutum.tomaestado_id }
    end

    assert_redirected_to seccion_tomaestado_rutum_path(assigns(:seccion_tomaestado_rutum))
  end

  test "should show seccion_tomaestado_rutum" do
    get :show, id: @seccion_tomaestado_rutum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seccion_tomaestado_rutum
    assert_response :success
  end

  test "should update seccion_tomaestado_rutum" do
    patch :update, id: @seccion_tomaestado_rutum, seccion_tomaestado_rutum: { fecha_fin: @seccion_tomaestado_rutum.fecha_fin, fecha_inicio: @seccion_tomaestado_rutum.fecha_inicio, rutum_id: @seccion_tomaestado_rutum.rutum_id, seccion_id: @seccion_tomaestado_rutum.seccion_id, tomaestado_id: @seccion_tomaestado_rutum.tomaestado_id }
    assert_redirected_to seccion_tomaestado_rutum_path(assigns(:seccion_tomaestado_rutum))
  end

  test "should destroy seccion_tomaestado_rutum" do
    assert_difference('SeccionTomaestadoRutum.count', -1) do
      delete :destroy, id: @seccion_tomaestado_rutum
    end

    assert_redirected_to seccion_tomaestado_ruta_path
  end
end
