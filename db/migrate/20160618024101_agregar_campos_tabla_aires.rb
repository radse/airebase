class AgregarCamposTablaAires < ActiveRecord::Migration
  def change
    add_column :aires, :marca, :string
    add_column :aires, :modelo_conjunto, :string
    add_column :aires, :modelo_ui, :string
    add_column :aires, :modelo_ue, :string
    add_column :aires, :dimensiones_ui, :string
    add_column :aires, :dimensiones_ue, :string
    add_column :aires, :eficiencia_refrigeracion, :string
    add_column :aires, :eficiencia_calefaccion, :string
    add_column :aires, :consumo_refrigeracion, :integer
    add_column :aires, :consumo_calefaccion, :integer
    add_column :aires, :corriente_refrigeracion, :integer
    add_column :aires, :corriente_calefaccion, :integer
    add_column :aires, :capacidad_refrigeracion, :integer
    add_column :aires, :capacidad_calefaccion, :integer
    add_column :aires, :peso_ui, :integer
    add_column :aires, :peso_ue, :integer
    end
end
