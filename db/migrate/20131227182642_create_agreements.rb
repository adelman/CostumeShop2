class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.references :customer, index: true
      t.references :costume, index: true
      t.string :title
      t.date :start
      t.date :end
      t.date :due
      t.string :financer

      t.timestamps
    end
  end
end
