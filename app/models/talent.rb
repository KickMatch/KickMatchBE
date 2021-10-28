class Talent < ApplicationRecord
  has_many :matches
  has_many :sport_clubs, through: :matches
  validates :name,
            :age,
            :height,
            :weight,
            :primary_position,
            :secondary_position,
            :video_url,
            :zipcode,
            :email,
            :dominant_foot,
            :vertical_jump,
            :forty_dash,
            :juggling_record,
            :talents,
            :awards, presence: true
end
