class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :dni
      t.string :apellido
      t.string :nombre
      t.string :telefono
      t.string :email
      t.string :domicilio

      t.timestamps null: false
    end
  end
end
