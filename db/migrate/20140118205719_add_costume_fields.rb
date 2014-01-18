class AddCostumeFields < ActiveRecord::Migration
  def change
    add_column :costumes, :category, :string
    add_column :costumes, :primary, :string
    add_column :costumes, :secondary, :string
    add_column :costumes, :period, :string
    add_column :costumes, :label, :string
    add_column :costumes, :special, :string
    add_column :costumes, :lost, :boolean
    add_column :costumes, :value, :decimal, scale: 2, precision: 6
    remove_column :costumes, :description
  end
end
