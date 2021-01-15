class Snippet < ApplicationRecord
  belongs_to :user
  has_many :input_summaries ,dependent: :destroy
  with_options presence: true do
    validates :group_name
    validates :info
  end
end
