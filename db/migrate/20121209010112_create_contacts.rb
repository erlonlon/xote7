class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :assunto
      t.string :cidade
      t.text :conteudo
      t.string :email
      t.string :nome

      t.timestamps
    end
  end
end
