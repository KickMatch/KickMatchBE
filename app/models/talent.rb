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
end
