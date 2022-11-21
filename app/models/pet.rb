class Pet < ApplicationRecord
  belongs_to :user
  validates :species, presence: true
  validates :species, inclusion: { in: %w[dog cat bird reptile] }
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates :description, presence: true
  validates :requirements, presence: true
end
