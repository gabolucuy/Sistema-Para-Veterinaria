class AddVeterrinariosToAtencion < ActiveRecord::Migration
  def change
    add_reference :atencions, :veterinario, index: true, foreign_key: true
  end
end
