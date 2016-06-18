class CreateAires < ActiveRecord::Migration
  def change
    create_table :aires do |t|

      t.timestamps null: false
    end
  end
end
