class CreateSeccionTomaestadoRuta < ActiveRecord::Migration
  def change
    create_table :seccion_tomaestado_ruta do |t|
      t.references :seccion, index: true, foreign_key: true
      t.references :tomaestado, index: true, foreign_key: true
      t.references :rutum, index: true, foreign_key: true
      t.date :fecha_inicio
      t.date :fecha_fin

      t.timestamps null: false
    end
  end
end
