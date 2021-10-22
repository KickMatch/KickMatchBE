# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do
#   sport_club = SportClub.create(name: Faker::Sports::Football.team, location: Faker::Address.city, league: Faker::Sports::Football.competition)
# end

# 10.times do
#   talent = Talent.create(name: Faker::Sports::Football.player, age: Faker::Number.number(digits: 2), height: Faker::Measurement.metric_height, weight: Faker::Measurement.weight, primary_position: Faker::Sports::Football.position, video_url: Faker::Internet.url)
# end
jo = Talent.create(name: "Jo", age: 19, height: "6'3", weight: 165, primary_position: 0, secondary_position: 2)
dee = Talent.create(name: "Dee", age: 24, height: "5'4", weight: 185, primary_position: 2, secondary_position: 0)
bigT = Talent.create(name: "T'variusness King", age: 24, height: "6'0", weight: 185, primary_position: 2, secondary_position: 0)
stephen = Talent.create(name: "Stephen", age: 17, height: "5'10", weight: 185, primary_position: 1, secondary_position: 2)
will = Talent.create(name: "Willy P", age: 17, height: "5'7", weight: 185, primary_position: 1, secondary_position: 1)
andrey = Talent.create(name: "Andrey", age: 25, height: "6'0", weight: 185, primary_position: 2, secondary_position: 0)

sc1 = SportClub.create(name: 'Denver SoccerClub', location: 'Denver CO', league: 'G leagure')
sc2 = SportClub.create(name: 'Aurora SoccerClub', location: 'Aurora CO', league: 'G leagure')
sc3 = SportClub.create(name: 'Thorton SoccerClub', location: 'Thorton CO', league: 'G leagure')
sc4 = SportClub.create(name: 'Foco SoccerClub', location: 'Fort Collins CO', league: 'G leagure')
sc5 = SportClub.create(name: 'Boulder SoccerClub', location: 'Boulder CO', league: 'G leagure')

# match1 = Match.create(sport_club_id: sc1.id, talent_id: dee.id)
# match3 = Match.create(sport_club_id: sc1.id, talent_id: bigT.id)
# match2 = Match.create(sport_club_id: sc2.id, talent_id: jo.id)
# match4 = Match.create(sport_club_id: sc3.id, talent_id: stephen.id)
# match5 = Match.create(sport_club_id: sc4.id, talent_id: will.id)
# match5 = Match.create(sport_club_id: sc5.id, talent_id: andrey.id)

