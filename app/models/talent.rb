class Talent < ApplicationRecord
  has_many :matches
  has_many :sport_clubs, through: :matches  
end
