class Mutations::CreateSportClub < Mutations::BaseMutation
  argument :name, String, required: true
  argument :location, String, required: true
  argument :league, String, required: true
  argument :zipcode, Integer, required: true
  argument :email, String, required: true
  argument :phone, String, required: true
  argument :tournaments, String, required: true
  argument :coach_resume, String, required: true
  argument :currently_looking, String, required: true

  field :sport_club, Types::SportClubType, null: false
	field :errors, [String], null: false

  def resolve(name:, location:, league:, zipcode:, email:, phone:, tournaments:, coach_resume:, currently_looking:)
    sport_club = SportClub.create(
      name: name,
      location: location,
      league: league,
      zipcode: zipcode,
      email: email,
      phone: phone,
      tournaments: tournaments,
      coach_resume: coach_resume,
      currently_looking: currently_looking)
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
