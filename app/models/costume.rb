class Costume < ActiveRecord::Base
  has_and_belongs_to_many :agreements, join_table: :agreement_costumes

  validates :wd, length: { maximum: 1 }

end
