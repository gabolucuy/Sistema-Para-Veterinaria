class CreateProdcutos < ActiveRecord::Migration
  def change
    create_table :prodcutos do |t|
      t.string :codigo
      t.string :nombre
      t.date :fecha_vencimiento
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
