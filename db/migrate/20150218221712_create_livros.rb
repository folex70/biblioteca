class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :nome
      t.text :descricao
      t.string :codigo
      t.string :sbn
      t.string :autor
      t.string :idioma
      t.string :paginacao
      t.string :imprenta
      t.string :palavras
      t.text :chave
      t.datetime :data_cadastro

      t.timestamps null: false
    end
  end
end
