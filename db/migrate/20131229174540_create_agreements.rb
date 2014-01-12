class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :mailbox
      t.string :wesid
      t.string :title
      t.date :start
      t.date :end
      t.date :due
      t.string :financer
      t.string :employee

      t.timestamps
    end
  end
end
