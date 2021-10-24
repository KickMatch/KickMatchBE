class SportClub < ApplicationRecord
  has_many :matches
  has_many :talents, through: :matches
  validates :name, presence: true
  validates :location, presence: true
  validates :league, presence: true
end
