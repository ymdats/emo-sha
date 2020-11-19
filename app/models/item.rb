class Item < ApplicationRecord
  has_one_attached :image
  has_many :evaluations
  validates :image, presence: true
  validates :name, presence: true
end
