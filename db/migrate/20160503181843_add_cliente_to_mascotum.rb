class AddClienteToMascotum < ActiveRecord::Migration
  def change
    add_reference :mascota, :cliente, index: true, foreign_key: true
  end
end
