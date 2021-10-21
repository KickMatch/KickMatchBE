require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'return one talent/athlete' do
    it 'can query for a single instance of talent' do
      @team1 = create(:sport_club)
      result = KickMatchBESchema.execute(club_query).as_json
      query_result = result["data"]["club"]
      expect(query_result["id"]).to eq(@team1.id.to_s)
      expect(query_result["name"]).to eq(@team1.name)
      expect(query_result["location"]).to eq(@team1.location)
      expect(query_result["league"]).to eq(@team1.league)
    end
  end

  def club_query
    <<~GQL
    {
      club(id: #{@team1.id}) {
        id,
        name,
        location,
        league
      }
    }
    GQL
  end
end
