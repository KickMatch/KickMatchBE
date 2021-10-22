class Mutations::CreateMatch < Mutations::BaseMutation
  argument :sport_club_id, Integer, required: true
  argument :talent_id, Integer, required: true

  field :match, Types::MatchType, null: false
	field :errors, [String], null: false

  def resolve(talent)
    match = Match.create!(talent_id: talent[:talent_id], sport_club_id: talent[:sport_club_id])
    if match.save
      {
        match: match,
        errors: []
      }
    else
      {
        match: nil,
        errors: match.errors.full_messages
      }
    end
  end
end
