class BorrarTablaAirdata < ActiveRecord::Migration
  def change
    drop_table :airdata do |t|
      t.string :email, null: false
      t.timestamps null: false
    end
  end
end
