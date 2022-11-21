class SitterProfile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :species_preference, inclusion: { in: %w[dog cat bird reptile] }
  validates :description, presence: true
end
