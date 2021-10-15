# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  sport_club = SportClub.create(name: Faker::Sports::Football.team, location: Faker::Address.city, league: Faker::Sports::Football.competition)
end

10.times do
  talent = Talent.create(name: Faker::Sports::Football.player, age: Faker::Number.number(digits: 2), height: Faker::Measurement.metric_height, weight: Faker::Measurement.weight, primary_position: Faker::Sports::Football.position)
end

# we could seed fake match data later as needed/desired
