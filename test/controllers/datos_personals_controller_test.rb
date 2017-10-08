require 'test_helper'

class DatosPersonalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datos_personal = datos_personals(:one)
  end

  test "should get index" do
    get datos_personals_url
    assert_response :success
  end

  test "should get new" do
    get new_datos_personal_url
    assert_response :success
  end

  test "should create datos_personal" do
    assert_difference('DatosPersonal.count') do
      post datos_personals_url, params: { datos_personal: { apellido: @datos_personal.apellido, direccion: @datos_personal.direccion, nombre: @datos_personal.nombre, telefono: @datos_personal.telefono, user_id: @datos_personal.user_id } }
    end

    assert_redirected_to datos_personal_url(DatosPersonal.last)
  end

  test "should show datos_personal" do
    get datos_personal_url(@datos_personal)
    assert_response :success
  end

  test "should get edit" do
    get edit_datos_personal_url(@datos_personal)
    assert_response :success
  end

  test "should update datos_personal" do
    patch datos_personal_url(@datos_personal), params: { datos_personal: { apellido: @datos_personal.apellido, direccion: @datos_personal.direccion, nombre: @datos_personal.nombre, telefono: @datos_personal.telefono, user_id: @datos_personal.user_id } }
    assert_redirected_to datos_personal_url(@datos_personal)
  end

  test "should destroy datos_personal" do
    assert_difference('DatosPersonal.count', -1) do
      delete datos_personal_url(@datos_personal)
    end

    assert_redirected_to datos_personals_url
  end
end
