class SportClub < ApplicationRecord
  has_many :matches
  has_many :talents, through: :matches  
end
