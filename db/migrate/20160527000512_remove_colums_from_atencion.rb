class RemoveColumsFromAtencion < ActiveRecord::Migration
  def change
  	remove_column :atencions, :Idveterinario
  	remove_column :atencions, :cliente_id
  	remove_column :atencions, :mascota_nombre
  end
end
