require 'test_helper'

class ProdcutosControllerTest < ActionController::TestCase
  setup do
    @prodcuto = prodcutos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prodcutos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prodcuto" do
    assert_difference('Prodcuto.count') do
      post :create, prodcuto: { cantidad: @prodcuto.cantidad, codigo: @prodcuto.codigo, fecha_vencimiento: @prodcuto.fecha_vencimiento, nombre: @prodcuto.nombre }
    end

    assert_redirected_to prodcuto_path(assigns(:prodcuto))
  end

  test "should show prodcuto" do
    get :show, id: @prodcuto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prodcuto
    assert_response :success
  end

  test "should update prodcuto" do
    patch :update, id: @prodcuto, prodcuto: { cantidad: @prodcuto.cantidad, codigo: @prodcuto.codigo, fecha_vencimiento: @prodcuto.fecha_vencimiento, nombre: @prodcuto.nombre }
    assert_redirected_to prodcuto_path(assigns(:prodcuto))
  end

  test "should destroy prodcuto" do
    assert_difference('Prodcuto.count', -1) do
      delete :destroy, id: @prodcuto
    end

    assert_redirected_to prodcutos_path
  end
end
