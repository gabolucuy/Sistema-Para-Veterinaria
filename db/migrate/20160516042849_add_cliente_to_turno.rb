class AddClienteToTurno < ActiveRecord::Migration
  def change
    add_reference :turnos, :cliente, index: true, foreign_key: true
  end
end
