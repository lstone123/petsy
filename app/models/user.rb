class User < ApplicationRecord
  has_many :pets
  has_many :bookings
  has_many :sitter_profiles, through: :bookings
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  attr_accessor :pet_owner

  # validates :location, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
