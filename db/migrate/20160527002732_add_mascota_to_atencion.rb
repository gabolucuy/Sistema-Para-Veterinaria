class AddMascotaToAtencion < ActiveRecord::Migration
  def change
    add_reference :atencions, :mascotum, index: true, foreign_key: true
  end
end
