class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.integer :cont
      t.date :actual

      t.timestamps null: false
    end
  end
end
