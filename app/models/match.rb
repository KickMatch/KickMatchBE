class Match < ApplicationRecord
  belongs_to :sport_club
  belongs_to :talent
  validates :sport_club_id, :talent_id, presence: true
end
