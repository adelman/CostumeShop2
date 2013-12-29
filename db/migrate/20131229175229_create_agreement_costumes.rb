class CreateAgreementCostumes < ActiveRecord::Migration
  def change
    create_table :agreement_costumes do |t|
      t.references :agreement, index: true
      t.references :costume, index: true

      t.timestamps
    end
  end
end
