require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  describe 'return all sports clubs' do
    it 'can query all clubs' do
      team1 = SportClub.create(name: 'Denver SoccerClub', location: 'Denver CO', league: 'G leagure', zipcode: 80207, email: 'denfutbol@gmail.com', phone: '720-555-4114', tournaments: 'Colorado Championchip', coach_resume: 'Fred Hampton is a motivated Illinois Native interested in using his pro experience to guide youth to their full potential.', currently_looking: 'Goalie,  Mid Foward')
      team2 = SportClub.create(name: 'Aurora SoccerClub', location: 'Aurora CO', league: 'G leagure', zipcode: 80010, email: 'aurorafutbol@gmail.com', phone: '303-545-9587', tournaments: 'Colorado Championchip', coach_resume: 'Ignad Gronkowski with over 20 years of experience from the postion as a player to a coach Ignad brings Aurora Soccer a special kind of leadership that will bring the city back another championship.', currently_looking: 'Striker' )
      team3 = SportClub.create(name: 'Thorton SoccerClub', location: 'Thorton CO', league: 'G leagure', zipcode: 80023, email: 'thortonsoccer@gmail.com', phone: '720-664-7474', tournaments: 'Colorado Championchip', coach_resume: 'Castilo Flor a native of California Castilo has competed at they highest levels of Soccer, with a chip on his shoulder he wants to bring a group of youths hsi love for the game and make the next geneation a leaders.', currently_looking: 'Goalie')

      result = KickMatchBESchema.execute(all_clubs_query)
      query_result = result["data"]["allClubs"]
      all_clubs = SportClub.all
      expect(query_result.count).to eq(3)
      expect(query_result[0]["name"]).to eq(team1.name)
      expect(query_result[2]["name"]).to eq(team3.name)
      expect(query_result.count).to eq(all_clubs.count)
    end
  end

  def all_clubs_query
    <<~GQL
    {
      allClubs {
        id,
        name,
        location,
        league,
        zipcode,
        email,
        phone,
        tournaments,
        coachResume,
        currentlyLooking
      }
    }
    GQL
  end
end
