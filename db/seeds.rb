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
jo = Talent.create(name: "Jo", age: 19, height: "6'3", weight: 165, primary_position: 'Goalie', secondary_position: 'Mid Fielder', video_url: 'www.futboltube/jo', zipcode: 80013, email: 'jo@futboltube', dominant_foot: 'R', goals_made_ls: 4, vertical_jump: 3.7, forty_dash: 7.8, juggling_record: 30, awards: 'MVP', talents: 'Scoring')
dee = Talent.create(name: "Dee", age: 24, height: "5'4", weight: 185, primary_position: 'Center Back', secondary_position: 'Right Mid', video_url: 'www.futboltube/dee', zipcode: 80207, email: 'dee@futboltube', dominant_foot: 'R', goals_made_ls: 8, vertical_jump: 10.7, forty_dash: 10.8, juggling_record: 15, awards: 'Rookie of the Year', talents: 'Defense, Playmaking')
bigT = Talent.create(name: "T'variusness King", age: 24, height: "6'0", weight: 185, primary_position: 'Denfensive Mid', secondary_position: 'Center Back', video_url: 'www.futboltube/bigT', zipcode: 80219, email: 'bigT@futboltube', dominant_foot: 'L', goals_made_ls: 0, vertical_jump: 20, forty_dash: 5, juggling_record: 13, awards: 'Most Improved Player', talents: 'Scoring')
stephen = Talent.create(name: "Steven", age: 17, height: "5'10", weight: 185, primary_position: 'Wing Back', secondary_position: 'Defensive Mid', video_url: 'www.futboltube/steven', zipcode: 80013, email: 'steven@futboltube', dominant_foot: 'R', goals_made_ls: 4, vertical_jump: 24, forty_dash: 9.8, juggling_record: 15, awards: 'Defensive Player of the Year', talents: 'Defense, Leadership')
will = Talent.create(name: "Willy P", age: 17, height: "5'7", weight: 185, primary_position: "Striker", secondary_position: 'Foward', video_url: 'www.futboltube/willP', zipcode: 80134, email: 'willP@futboltube', dominant_foot: 'L', goals_made_ls: 4, vertical_jump: 18.7, forty_dash: 12, juggling_record: 14, awards: 'Sixth man of the Year', talents: 'Playmaking')
andrey = Talent.create(name: "Andrey", age: 25, height: "6'0", weight: 185, primary_position: 'Full Back', secondary_position: 'Striker', video_url: 'www.futboltube/andrey', zipcode: 80207, email: 'andrey@futboltube', dominant_foot: 'R', goals_made_ls: 1, vertical_jump: 20, forty_dash: 7.8, juggling_record: 30, awards: 'Finals MVP', talents: 'Leadership')

sc1 = SportClub.create(name: 'Denver SoccerClub', location: 'Denver CO', league: 'G leagure', zipcode: 80207, email: 'denfutbol@gmail.com', phone: '720-555-4114', tournaments: 'Colorado Championchip', coach_resume: 'Fred Hampton is a motivated Illinois Native interested in using his pro experience to guide youth to their full potential.', currently_looking: 'Goalie,  Mid Foward')
sc2 = SportClub.create(name: 'Aurora SoccerClub', location: 'Aurora CO', league: 'G leagure', zipcode: 80010, email: 'aurorafutbol@gmail.com', phone: '303-545-9587', tournaments: 'Colorado Championchip', coach_resume: 'Ignad Gronkowski with over 20 years of experience from the postion as a player to a coach Ignad brings Aurora Soccer a special kind of leadership that will bring the city back another championship.', currently_looking: 'Striker' )
sc3 = SportClub.create(name: 'Thorton SoccerClub', location: 'Thorton CO', league: 'G leagure', zipcode: 80023, email: 'thortonsoccer@gmail.com', phone: '720-664-7474', tournaments: 'Colorado Championchip', coach_resume: 'Castilo Flor a native of California Castilo has competed at they highest levels of Soccer, with a chip on his shoulder he wants to bring a group of youths hsi love for the game and make the next geneation a leaders.', currently_looking: 'Goalie')
sc4 = SportClub.create(name: 'Foco SoccerClub', location: 'Fort Collins CO', league: 'G leagure', zipcode: 80521, email: 'focosoccer@gmail.com', phone: '720-858-7777', tournaments: 'Colorado Championchip', coach_resume: "Darry 'Big J' Johnson a new coach for Fort Collins is motivated to send his team far.", currently_looking: 'Defensive Mid')
sc5 = SportClub.create(name: 'Boulder SoccerClub', location: 'Boulder CO', league: 'G leagure', zipcode: 52454, email: 'boulderfutbol@gmail.com', phone: '303-888-9597', tournaments: 'Colorado Championchip', coach_resume: 'Jackie Moon an ex-Basketball player of the Flint Tropics coach Moon brings a flair to the city that will guide his team far.', currently_looking: 'Winger')

match1 = Match.create(sport_club_id: sc1.id, talent_id: dee.id)
match1 = Match.create(sport_club_id: sc5.id, talent_id: dee.id)

match3 = Match.create(sport_club_id: sc1.id, talent_id: bigT.id)

match2 = Match.create(sport_club_id: sc2.id, talent_id: jo.id)
match2 = Match.create(sport_club_id: sc4.id, talent_id: jo.id)
match2 = Match.create(sport_club_id: sc3.id, talent_id: jo.id)

match4 = Match.create(sport_club_id: sc1.id, talent_id: stephen.id)
match4 = Match.create(sport_club_id: sc3.id, talent_id: stephen.id)

match5 = Match.create(sport_club_id: sc3.id, talent_id: will.id)
match5 = Match.create(sport_club_id: sc4.id, talent_id: will.id)

match5 = Match.create(sport_club_id: sc1.id, talent_id: andrey.id)
match5 = Match.create(sport_club_id: sc5.id, talent_id: andrey.id)
