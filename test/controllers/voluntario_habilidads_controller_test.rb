require 'test_helper'

class VoluntarioHabilidadsControllerTest < ActionController::TestCase
  setup do
    @voluntario_habilidad = voluntario_habilidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voluntario_habilidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voluntario_habilidad" do
    assert_difference('VoluntarioHabilidad.count') do
      post :create, voluntario_habilidad: {  }
    end

    assert_redirected_to voluntario_habilidad_path(assigns(:voluntario_habilidad))
  end

  test "should show voluntario_habilidad" do
    get :show, id: @voluntario_habilidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voluntario_habilidad
    assert_response :success
  end

  test "should update voluntario_habilidad" do
    patch :update, id: @voluntario_habilidad, voluntario_habilidad: {  }
    assert_redirected_to voluntario_habilidad_path(assigns(:voluntario_habilidad))
  end

  test "should destroy voluntario_habilidad" do
    assert_difference('VoluntarioHabilidad.count', -1) do
      delete :destroy, id: @voluntario_habilidad
    end

    assert_redirected_to voluntario_habilidads_path
  end
end
