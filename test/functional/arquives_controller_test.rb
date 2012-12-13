require 'test_helper'

class ArquivesControllerTest < ActionController::TestCase
  setup do
    @arquife = arquives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arquives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arquife" do
    assert_difference('Arquive.count') do
      post :create, arquife: { album: @arquife.album, autor: @arquife.autor, descricao: @arquife.descricao, titulo: @arquife.titulo }
    end

    assert_redirected_to arquife_path(assigns(:arquife))
  end

  test "should show arquife" do
    get :show, id: @arquife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arquife
    assert_response :success
  end

  test "should update arquife" do
    put :update, id: @arquife, arquife: { album: @arquife.album, autor: @arquife.autor, descricao: @arquife.descricao, titulo: @arquife.titulo }
    assert_redirected_to arquife_path(assigns(:arquife))
  end

  test "should destroy arquife" do
    assert_difference('Arquive.count', -1) do
      delete :destroy, id: @arquife
    end

    assert_redirected_to arquives_path
  end
end
