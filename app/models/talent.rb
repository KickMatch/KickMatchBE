class Talent < ApplicationRecord
  has_many :matches
  has_many :sport_clubs, through: :matches
  validates :name, presence: true
  validates :age, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :primary_position, presence: true
  validates :secondary_position, presence: true
  validates :video_url, presence: true
  validates :zipcode, presence: true
  validates :email, presence: true
  validates :dominant_foot, presence: true
  validates :vertical_jump, presence: true
  validates :forty_dash, presence: true
  validates :juggling_record, presence: true
  validates :talents, presence: true
  validates :awards, presence: true
end

#is there a way to condense the validations? maybe some sort of block? research this
