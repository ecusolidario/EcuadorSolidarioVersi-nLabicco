require 'test_helper'

class VoluntarioRecursosControllerTest < ActionController::TestCase
  setup do
    @voluntario_recurso = voluntario_recursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voluntario_recursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voluntario_recurso" do
    assert_difference('VoluntarioRecurso.count') do
      post :create, voluntario_recurso: {  }
    end

    assert_redirected_to voluntario_recurso_path(assigns(:voluntario_recurso))
  end

  test "should show voluntario_recurso" do
    get :show, id: @voluntario_recurso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voluntario_recurso
    assert_response :success
  end

  test "should update voluntario_recurso" do
    patch :update, id: @voluntario_recurso, voluntario_recurso: {  }
    assert_redirected_to voluntario_recurso_path(assigns(:voluntario_recurso))
  end

  test "should destroy voluntario_recurso" do
    assert_difference('VoluntarioRecurso.count', -1) do
      delete :destroy, id: @voluntario_recurso
    end

    assert_redirected_to voluntario_recursos_path
  end
end
