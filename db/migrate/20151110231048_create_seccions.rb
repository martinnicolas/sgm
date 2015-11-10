class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.string :nombre
      t.references :subestacion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
