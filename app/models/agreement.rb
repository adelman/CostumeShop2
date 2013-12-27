class Agreement < ActiveRecord::Base
  belongs_to :customer
  belongs_to :costume
end
