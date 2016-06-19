class CrearColumnaMarcaIdAires < ActiveRecord::Migration
  def change
  remove_column :aires, :marca, :string
  add_column :aires, :marca_id, :integer
  end
end
