class SportClub < ApplicationRecord
  has_many :matches
  has_many :talents, through: :matches
  validates :name, presence: true
  validates :location, presence: true
  validates :league, presence: true
  validates :zipcode, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :tournaments, presence: true
  validates :coach_resume, presence: true
  validates :currently_looking, presence: true
end
