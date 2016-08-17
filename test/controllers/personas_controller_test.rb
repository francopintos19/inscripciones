require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { almuerzo: @persona.almuerzo, apellido: @persona.apellido, cargo: @persona.cargo, celular: @persona.celular, ciudad: @persona.ciudad, codido_postal: @persona.codido_postal, direcc: @persona.direcc, doc: @persona.doc, email: @persona.email, email_prof: @persona.email_prof, especialidad: @persona.especialidad, id_tipo_doc: @persona.id_tipo_doc, institucion: @persona.institucion, nombre: @persona.nombre, ocupacion: @persona.ocupacion, profeccional: @persona.profeccional, provincia: @persona.provincia, telefono_prof: @persona.telefono_prof, titulo_posgrado: @persona.titulo_posgrado, titulo_universitario: @persona.titulo_universitario }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    patch :update, id: @persona, persona: { almuerzo: @persona.almuerzo, apellido: @persona.apellido, cargo: @persona.cargo, celular: @persona.celular, ciudad: @persona.ciudad, codido_postal: @persona.codido_postal, direcc: @persona.direcc, doc: @persona.doc, email: @persona.email, email_prof: @persona.email_prof, especialidad: @persona.especialidad, id_tipo_doc: @persona.id_tipo_doc, institucion: @persona.institucion, nombre: @persona.nombre, ocupacion: @persona.ocupacion, profeccional: @persona.profeccional, provincia: @persona.provincia, telefono_prof: @persona.telefono_prof, titulo_posgrado: @persona.titulo_posgrado, titulo_universitario: @persona.titulo_universitario }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end
