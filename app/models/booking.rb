class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sitter_profile

  validates :user, presence: true
end
