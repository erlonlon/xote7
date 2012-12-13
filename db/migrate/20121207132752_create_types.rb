class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :nome

      t.timestamps
    end
  end
end
