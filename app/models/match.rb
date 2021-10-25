class Match < ApplicationRecord
  belongs_to :sport_club
  belongs_to :talent
  validates :sport_club_id, presence: true
  validates :talent_id, presence: true
end
