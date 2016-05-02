class AddClientesToVenta < ActiveRecord::Migration
  def change
    add_reference :venta, :clientes, index: true, foreign_key: true
  end
end
