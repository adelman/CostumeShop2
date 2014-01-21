class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :costume_id
      t.string :category
      t.string :primary
      t.string :secondary
      t.string :period
      t.string :label

      t.timestamps
    end
  end
end
