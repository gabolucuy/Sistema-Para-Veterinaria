class AddEstadoToVentum < ActiveRecord::Migration
  def change
    add_column :venta, :estado, :boolean
  end
end
