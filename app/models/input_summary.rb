class InputSummary < ApplicationRecord
  belongs_to :snippet
  has_many :templates
end
