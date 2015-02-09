require 'test_helper'

class VootesControllerTest < ActionController::TestCase
  setup do
    @voote = vootes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vootes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voote" do
    assert_difference('Voote.count') do
      post :create, voote: { id_com: @voote.id_com, id_const: @voote.id_const, number: @voote.number }
    end

    assert_redirected_to voote_path(assigns(:voote))
  end

  test "should show voote" do
    get :show, id: @voote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voote
    assert_response :success
  end

  test "should update voote" do
    patch :update, id: @voote, voote: { id_com: @voote.id_com, id_const: @voote.id_const, number: @voote.number }
    assert_redirected_to voote_path(assigns(:voote))
  end

  test "should destroy voote" do
    assert_difference('Voote.count', -1) do
      delete :destroy, id: @voote
    end

    assert_redirected_to vootes_path
  end
end
