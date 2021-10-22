require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  describe 'return all talent' do
    it 'can query all talent' do
      player1 = create(:talent)
      player2 = create(:talent)
      player3 = create(:talent)
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
      }
    }
    GQL
  end
end
