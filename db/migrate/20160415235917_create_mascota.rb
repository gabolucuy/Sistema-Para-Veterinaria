class CreateMascota < ActiveRecord::Migration
  def change
    create_table :mascota do |t|
      t.integer :id_cliente
      t.string :nombre
      t.string :especie
      t.string :raza
      t.date :fecha_nacimiento

      t.timestamps null: false
    end
  end
end
