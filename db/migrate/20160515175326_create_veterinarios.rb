class CreateVeterinarios < ActiveRecord::Migration
  def change
    create_table :veterinarios do |t|
      t.integer :ci
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.string :correo

      t.timestamps null: false
    end
  end
end
