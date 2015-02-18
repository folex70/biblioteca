json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :matricula, :nome, :sobrenome, :endereco, :string, :telefone, :email
  json.url usuario_url(usuario, format: :json)
end
