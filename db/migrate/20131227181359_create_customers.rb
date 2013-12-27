class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :mailbox
      t.string :wesid

      t.timestamps
    end
  end
end
