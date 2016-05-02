class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.integer :Costo

      t.timestamps null: false
    end
  end
end
