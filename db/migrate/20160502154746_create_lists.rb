class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :producto
      t.integer :costo
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
