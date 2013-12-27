class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.integer :cid
      t.string :description
      t.string :wd
      t.string :photo
      t.boolean :back

      t.timestamps
    end
  end
end
