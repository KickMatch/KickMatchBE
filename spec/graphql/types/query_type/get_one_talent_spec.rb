require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'return one talent/athlete' do
    it 'can query for a single instance of talent' do
      @player1 = Talent.create(name: "Jo", age: 19, height: "6'3", weight: 165, primary_position: 'Goalie', secondary_position: 'Mid Fielder', video_url: 'www.futboltube/jo', zipcode: 80013, email: 'jo@futboltube', dominant_foot: 'R', goals_made_ls: 4, vertical_jump: 3.7, forty_dash: 7.8, juggling_record: 30, awards: 'MVP', talents: 'Scoring')

      result = KickMatchBESchema.execute(talent_query).as_json
      query_result = result["data"]["talent"]
      expect(query_result["id"]).to eq(@player1.id.to_s)
      expect(query_result["name"]).to eq(@player1.name)
      expect(query_result["age"]).to eq(@player1.age)
      expect(query_result["height"]).to eq(@player1.height)
      expect(query_result["weight"]).to eq(@player1.weight)
      expect(query_result["videoUrl"]).to eq(@player1.video_url)
    end
  end

  def talent_query
    <<~GQL
    {
      talent(id: #{@player1.id}) {
        id,
        name,
        age,
        height,
        weight,
        primaryPosition,
        secondaryPosition,
        videoUrl,
        zipcode,
        email,
        dominantFoot,
        goalsMadeLs,
        verticalJump,
        fortyDash,
        jugglingRecord,
        primaryPosition,
        secondaryPosition,
        awards
      }
    }
    GQL
  end
end
