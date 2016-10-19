require 'test_helper'

class DonacionsControllerTest < ActionController::TestCase
  setup do
    @donacion = donacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donacion" do
    assert_difference('Donacion.count') do
      post :create, donacion: {  }
    end

    assert_redirected_to donacion_path(assigns(:donacion))
  end

  test "should show donacion" do
    get :show, id: @donacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donacion
    assert_response :success
  end

  test "should update donacion" do
    patch :update, id: @donacion, donacion: {  }
    assert_redirected_to donacion_path(assigns(:donacion))
  end

  test "should destroy donacion" do
    assert_difference('Donacion.count', -1) do
      delete :destroy, id: @donacion
    end

    assert_redirected_to donacions_path
  end
end
