class SportClub < ApplicationRecord
  has_many :matches
  has_many :talents, through: :matches
  validates :name,
            :location,
            :league,
            :zipcode,
            :email,
            :phone,
            :tournaments,
            :coach_resume,
            :currently_looking, presence: true
end
