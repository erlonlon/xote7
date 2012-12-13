class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :titulo
      t.string :autor
      t.string :album
      t.text :body

      t.timestamps
    end
  end
end
