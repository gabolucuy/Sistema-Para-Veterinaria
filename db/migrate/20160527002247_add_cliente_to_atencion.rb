class AddClienteToAtencion < ActiveRecord::Migration
  def change
    add_reference :atencions, :cliente, index: true, foreign_key: true
    
  end
end
