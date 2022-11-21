class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sitter_profile
  belongs_to :pet

  validates :user, presence: true
end
