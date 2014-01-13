class CreateDrycleans < ActiveRecord::Migration
  def change
    create_table :drycleans do |t|
      t.references :agreement, index: true
      t.integer :garment
      t.integer :invoice

      t.timestamps
    end
  end
end
