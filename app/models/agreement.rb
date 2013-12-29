class Agreement < ActiveRecord::Base
  has_many :agreement_costumes
  has_many :costumes, through: :agreement_costumes

  accepts_nested_attributes_for :costumes
end
