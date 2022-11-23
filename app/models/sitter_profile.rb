class SitterProfile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :species_preference, inclusion: { in: %w[dog cat bird reptile] }
  validates :description, presence: true
end
