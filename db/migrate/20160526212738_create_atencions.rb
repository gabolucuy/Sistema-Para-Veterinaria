class CreateAtencions < ActiveRecord::Migration
  def change
    create_table :atencions do |t|
      t.date :fecha
      t.integer :cliente_id
      t.string :mascota_nombre
      t.text :anamnesis
      t.integer :temperatura
      t.text :mucosas
      t.text :palpacion
      t.text :diagnostico
      t.text :tratamiento

      t.timestamps null: false
    end
  end
end
