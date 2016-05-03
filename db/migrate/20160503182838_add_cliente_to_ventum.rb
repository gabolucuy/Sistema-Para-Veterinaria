class AddClienteToVentum < ActiveRecord::Migration
  def change
    add_reference :venta, :cliente, index: true, foreign_key: true
  end
end
