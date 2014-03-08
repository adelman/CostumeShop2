class Agreement < ActiveRecord::Base
  has_and_belongs_to_many :costumes, join_table: :agreement_costumes  
  accepts_nested_attributes_for :costumes, reject_if: proc { |attributes| attributes['cid'].blank? }

  has_many :drycleans
  accepts_nested_attributes_for :drycleans, allow_destroy: true, reject_if: :all_blank

end
