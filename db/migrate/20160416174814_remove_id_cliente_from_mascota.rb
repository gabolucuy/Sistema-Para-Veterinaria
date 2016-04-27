class RemoveIdClienteFromMascota < ActiveRecord::Migration
  def change
    remove_column :mascota, :id_cliente, :integer
  end
end
