require 'test_helper'

class UniversitariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @universitario = universitarios(:one)
  end

  test "should get index" do
    get universitarios_url
    assert_response :success
  end

  test "should get new" do
    get new_universitario_url
    assert_response :success
  end

  test "should create universitario" do
    assert_difference('Universitario.count') do
      post universitarios_url, params: { universitario: { apellido: @universitario.apellido, cant_horas: @universitario.cant_horas, carrera_id: @universitario.carrera_id, ci: @universitario.ci, correo: @universitario.correo, nombre: @universitario.nombre } }
    end

    assert_redirected_to universitario_url(Universitario.last)
  end

  test "should show universitario" do
    get universitario_url(@universitario)
    assert_response :success
  end

  test "should get edit" do
    get edit_universitario_url(@universitario)
    assert_response :success
  end

  test "should update universitario" do
    patch universitario_url(@universitario), params: { universitario: { apellido: @universitario.apellido, cant_horas: @universitario.cant_horas, carrera_id: @universitario.carrera_id, ci: @universitario.ci, correo: @universitario.correo, nombre: @universitario.nombre } }
    assert_redirected_to universitario_url(@universitario)
  end

  test "should destroy universitario" do
    assert_difference('Universitario.count', -1) do
      delete universitario_url(@universitario)
    end

    assert_redirected_to universitarios_url
  end
end
