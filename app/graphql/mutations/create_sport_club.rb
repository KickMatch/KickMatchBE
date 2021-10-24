class Mutations::CreateSportClub < Mutations::BaseMutation
  argument :name, String, required: true
  argument :location, String, required: true
  argument :league, String, required: true

  field :sport_club, Types::SportClubType, null: false
	field :errors, [String], null: false

  def resolve(name:, location:, league:)
    sport_club = SportClub.create(name: name, location: location, league: league)
    if sport_club.save
      {
        sport_club: sport_club,
        errors: []
      }
    else
      {
        sport: sport_club,
        errors: sport_club.errors.full_messages
      }
    end
  end
end
