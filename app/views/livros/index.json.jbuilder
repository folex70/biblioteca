json.array!(@livros) do |livro|
  json.extract! livro, :id, :titulo, :nome, :descricao, :codigo, :sbn, :autor, :idioma, :paginacao, :imprenta, :palavras, :chave, :data_cadastro
  json.url livro_url(livro, format: :json)
end
