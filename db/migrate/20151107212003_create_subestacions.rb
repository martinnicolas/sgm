class CreateSubestacions < ActiveRecord::Migration
  def change
    create_table :subestacions do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps null: false
    end
  end
end
