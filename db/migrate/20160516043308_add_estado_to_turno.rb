class AddEstadoToTurno < ActiveRecord::Migration
  def change
    add_column :turnos, :estado, :string
  end
end
