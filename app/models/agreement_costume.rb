class AgreementCostume < ActiveRecord::Base
  belongs_to :agreement
  belongs_to :costume
end
