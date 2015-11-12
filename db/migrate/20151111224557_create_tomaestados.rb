class CreateTomaestados < ActiveRecord::Migration
  def change
    create_table :tomaestados do |t|
      t.integer :dni
      t.string :apellido
      t.string :nombre

      t.timestamps null: false
    end
  end
end
