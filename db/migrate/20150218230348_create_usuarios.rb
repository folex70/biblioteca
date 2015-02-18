class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :matricula
      t.string :nome
      t.string :sobrenome
      t.string :endereco
      t.string :string
      t.string :telefone
      t.string :email

      t.timestamps null: false
    end
  end
end
