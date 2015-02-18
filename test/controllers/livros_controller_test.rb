require 'test_helper'

class LivrosControllerTest < ActionController::TestCase
  setup do
    @livro = livros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livro" do
    assert_difference('Livro.count') do
      post :create, livro: { autor: @livro.autor, chave: @livro.chave, codigo: @livro.codigo, data_cadastro: @livro.data_cadastro, descricao: @livro.descricao, idioma: @livro.idioma, imprenta: @livro.imprenta, nome: @livro.nome, paginacao: @livro.paginacao, palavras: @livro.palavras, sbn: @livro.sbn, titulo: @livro.titulo }
    end

    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should show livro" do
    get :show, id: @livro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livro
    assert_response :success
  end

  test "should update livro" do
    patch :update, id: @livro, livro: { autor: @livro.autor, chave: @livro.chave, codigo: @livro.codigo, data_cadastro: @livro.data_cadastro, descricao: @livro.descricao, idioma: @livro.idioma, imprenta: @livro.imprenta, nome: @livro.nome, paginacao: @livro.paginacao, palavras: @livro.palavras, sbn: @livro.sbn, titulo: @livro.titulo }
    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should destroy livro" do
    assert_difference('Livro.count', -1) do
      delete :destroy, id: @livro
    end

    assert_redirected_to livros_path
  end
end
