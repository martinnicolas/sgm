class CreateTomaestados < ActiveRecord::Migration
  def change
    create_table :tomaestados do |t|
      t.integer :dni
      t.string :apellido
      t.string :nombre
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
