class Template < ApplicationRecord
  belongs_to :input_summary

  with_options presence: true do
    validates :title 
    validates :info 
  end
end
