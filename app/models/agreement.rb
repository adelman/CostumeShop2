class Agreement < ActiveRecord::Base
  has_many :agreement_costumes
  has_many :costumes, through: :agreement_costumes


end
