require 'test_helper'

class AtencionsControllerTest < ActionController::TestCase
  setup do
    @atencion = atencions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atencions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atencion" do
    assert_difference('Atencion.count') do
      post :create, atencion: { anamnesis: @atencion.anamnesis, cliente_id: @atencion.cliente_id, diagnostico: @atencion.diagnostico, fecha: @atencion.fecha, mascota_nombre: @atencion.mascota_nombre, mucosas: @atencion.mucosas, palpacion: @atencion.palpacion, temperatura: @atencion.temperatura, tratamiento: @atencion.tratamiento }
    end

    assert_redirected_to atencion_path(assigns(:atencion))
  end

  test "should show atencion" do
    get :show, id: @atencion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atencion
    assert_response :success
  end

  test "should update atencion" do
    patch :update, id: @atencion, atencion: { anamnesis: @atencion.anamnesis, cliente_id: @atencion.cliente_id, diagnostico: @atencion.diagnostico, fecha: @atencion.fecha, mascota_nombre: @atencion.mascota_nombre, mucosas: @atencion.mucosas, palpacion: @atencion.palpacion, temperatura: @atencion.temperatura, tratamiento: @atencion.tratamiento }
    assert_redirected_to atencion_path(assigns(:atencion))
  end

  test "should destroy atencion" do
    assert_difference('Atencion.count', -1) do
      delete :destroy, id: @atencion
    end

    assert_redirected_to atencions_path
  end
end
