class AddVentaToList < ActiveRecord::Migration
  def change
    add_reference :lists, :ventum, index: true, foreign_key: true
  end
end
