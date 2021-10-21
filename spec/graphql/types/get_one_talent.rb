require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'return one talent/athlete' do
    it 'can query for a single instance of talent' do
      @player1 = create(:talent)
      player2 = create(:talent)
      player3 = create(:talent)
      result = KickMatchBESchema.execute(talent_query).as_json
      query_result = result["data"]["talent"]
      # all_talent = Talent.all
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
        videoUrl
      }
    }
    GQL
  end
end
