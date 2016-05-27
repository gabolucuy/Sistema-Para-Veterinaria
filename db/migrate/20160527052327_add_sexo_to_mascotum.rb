class AddSexoToMascotum < ActiveRecord::Migration
  def change
    add_column :mascota, :sexo, :boolean 
    add_column :mascota, :esterilizado, :boolean 
    add_column :mascota, :color, :string
  end
end
