require 'test_helper'

class TipoSegurosControllerTest < ActionController::TestCase
  setup do
    @tipo_seguro = tipo_seguros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_seguros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_seguro" do
    assert_difference('TipoSeguro.count') do
      post :create, tipo_seguro: { descricao: @tipo_seguro.descricao }
    end

    assert_redirected_to tipo_seguro_path(assigns(:tipo_seguro))
  end

  test "should show tipo_seguro" do
    get :show, id: @tipo_seguro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_seguro
    assert_response :success
  end

  test "should update tipo_seguro" do
    put :update, id: @tipo_seguro, tipo_seguro: { descricao: @tipo_seguro.descricao }
    assert_redirected_to tipo_seguro_path(assigns(:tipo_seguro))
  end

  test "should destroy tipo_seguro" do
    assert_difference('TipoSeguro.count', -1) do
      delete :destroy, id: @tipo_seguro
    end

    assert_redirected_to tipo_seguros_path
  end
end
