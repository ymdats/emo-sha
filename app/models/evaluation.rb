class Evaluation < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :rate, presence: true
end
