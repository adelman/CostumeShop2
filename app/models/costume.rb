class Costume < ActiveRecord::Base
  has_many :agreements
  has_many :customers, through: :agreements
end
