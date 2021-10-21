require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  describe 'return all sports clubs' do
    it 'can query all clubs' do
      team1 = create(:sport_club)
      team2 = create(:sport_club)
      team3 = create(:sport_club)
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
        league
      }
    }
    GQL
  end
end
