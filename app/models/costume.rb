class Costume < ActiveRecord::Base
  has_many :agreement_costumes
  has_many :agreements, through: :agreement_costumes

  validates_presence_of :cid
  validates_uniqueness_of :cid
end
