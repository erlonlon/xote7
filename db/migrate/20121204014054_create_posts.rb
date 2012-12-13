class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :descricao
      t.string :local
      t.string :cidade
      t.string :email
      t.string :url
      t.date :data_evento
      t.string :autor
      t.text :body

      t.timestamps
    end
  end
end
