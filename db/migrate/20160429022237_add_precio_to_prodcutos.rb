class AddPrecioToProdcutos < ActiveRecord::Migration
  def change
    add_column :prodcutos, :Precio, :int
  end
end
