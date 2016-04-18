class AddClientesToMascota < ActiveRecord::Migration
  def change
    add_reference :mascota, :clientes, index: true, foreign_key: true
  end
end
