class AddEspecialidadToVeterinarios < ActiveRecord::Migration
  def change
    add_column :veterinarios, :especialidad, :string
  end
end
