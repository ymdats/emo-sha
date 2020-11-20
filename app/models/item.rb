class Item < ApplicationRecord
  has_one_attached :image
  has_many :evaluations
  belongs_to :user
  validates :image, presence: true
  validates :name, presence: true
end
