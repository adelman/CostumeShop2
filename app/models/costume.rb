class Costume < ActiveRecord::Base
  has_many :agreement_costumes
  has_many :agreements, through: :agreement_costumes

  validates_presence_of :cid
  validates_uniqueness_of :cid

  before_save :mark_as_out

  private
    def mark_as_out
      self.back = false
    end
end
