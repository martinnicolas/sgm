class CreateRutaMedidors < ActiveRecord::Migration
  def change
    create_table :ruta_medidors do |t|
      t.references :rutum, index: true, foreign_key: true
      t.references :medidor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
