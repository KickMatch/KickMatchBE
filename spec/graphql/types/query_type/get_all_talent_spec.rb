require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  describe 'return all talent' do
    it 'can query all talent' do

      player1 = Talent.create(name: "Jo", age: 19, height: "6'3", weight: 165, primary_position: 'Goalie', secondary_position: 'Mid Fielder', video_url: 'www.futboltube/jo', zipcode: 80013, email: 'jo@futboltube', dominant_foot: 'R', goals_made_ls: 4, vertical_jump: 3.7, forty_dash: 7.8, juggling_record: 30, awards: 'MVP', talents: 'Scoring')
      player2 = Talent.create(name: "Dee", age: 24, height: "5'4", weight: 185, primary_position: 'Center Back', secondary_position: 'Right Mid', video_url: 'www.futboltube/dee', zipcode: 80207, email: 'dee@futboltube', dominant_foot: 'R', goals_made_ls: 8, vertical_jump: 10.7, forty_dash: 10.8, juggling_record: 15, awards: 'Rookie of the Year', talents: 'Defense, Playmaking')
      player3 = Talent.create(name: "T'variusness King", age: 24, height: "6'0", weight: 185, primary_position: 'Denfensive Mid', secondary_position: 'Center Back', video_url: 'www.futboltube/bigT', zipcode: 80219, email: 'bigT@futboltube', dominant_foot: 'L', goals_made_ls: 0, vertical_jump: 20, forty_dash: 5, juggling_record: 13, awards: 'Most Improved Player', talents: 'Scoring')

      result = KickMatchBESchema.execute(all_talent_query)
      query_result = result["data"]["allTalent"]
      all_talent = Talent.all

      expect(query_result.count).to eq(3)
      expect(query_result[0]["name"]).to eq(player1.name)
      expect(query_result[2]["name"]).to eq(player3.name)
      expect(query_result.count).to eq(all_talent.count)
    end
  end

  def all_talent_query
    <<~GQL
    {
      allTalent {
        id,
        name,
        age,
        height,
        weight,
        primaryPosition,
        secondaryPosition,
        videoUrl
        zipcode
        email
        dominantFoot
        goalsMadeLs
        verticalJump
        fortyDash
        jugglingRecord
        primaryPosition
        secondaryPosition
        awards
      }
    }
    GQL
  end
end
