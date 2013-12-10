require 'test_helper'

class DigomsControllerTest < ActionController::TestCase
  setup do
    @digom = digoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:digoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create digom" do
    assert_difference('Digom.count') do
      post :create, digom: { corp: @digom.corp, executed: @digom.executed, factory: @digom.factory, flowType: @digom.flowType, lab: @digom.lab, notes: @digom.notes, numOfFlows: @digom.numOfFlows, parameters: @digom.parameters, persents: @digom.persents, samplerName: @digom.samplerName }
    end

    assert_redirected_to digom_path(assigns(:digom))
  end

  test "should show digom" do
    get :show, id: @digom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @digom
    assert_response :success
  end

  test "should update digom" do
    patch :update, id: @digom, digom: { corp: @digom.corp, executed: @digom.executed, factory: @digom.factory, flowType: @digom.flowType, lab: @digom.lab, notes: @digom.notes, numOfFlows: @digom.numOfFlows, parameters: @digom.parameters, persents: @digom.persents, samplerName: @digom.samplerName }
    assert_redirected_to digom_path(assigns(:digom))
  end

  test "should destroy digom" do
    assert_difference('Digom.count', -1) do
      delete :destroy, id: @digom
    end

    assert_redirected_to digoms_path
  end
end
