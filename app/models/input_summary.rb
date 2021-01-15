class InputSummary < ApplicationRecord
  belongs_to :snippet, optional: true
  has_many :templates , dependent: :destroy
end
