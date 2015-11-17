class CreateMedidors < ActiveRecord::Migration
  def change
    create_table :medidors do |t|
      t.integer :numero
      t.string :nombre
      t.string :novedades
      t.string :novedades_criticas
      t.string :latitud
      t.string :longitud
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
