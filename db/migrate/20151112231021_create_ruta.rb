class CreateRuta < ActiveRecord::Migration
  def change
    create_table :ruta do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
