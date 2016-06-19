class CrearColumnaUserId < ActiveRecord::Migration
  def change
    add_column :aires, :user_id, :integer
  end
end
