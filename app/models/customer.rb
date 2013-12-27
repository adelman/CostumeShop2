class Customer < ActiveRecord::Base
  has_many :agreements
  has_many :costumes, through: :agreements
end
