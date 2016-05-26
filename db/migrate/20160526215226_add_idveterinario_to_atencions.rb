class AddIdveterinarioToAtencions < ActiveRecord::Migration
  def change
    add_column :atencions, :Idveterinario, :integer
  end
end
