class Agreement < ActiveRecord::Base
  has_and_belongs_to_many :costumes, join_table: :agreement_costumes
  accepts_nested_attributes_for :costumes, :reject_if => :all_blank
end
