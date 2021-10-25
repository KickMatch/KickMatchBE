require 'rails_helper'

module Mutations
  module Matches
    RSpec.describe CreateMatch, type: :request do
      describe '.resolve' do
        xit 'creates a single instance of a match' do
          expect(Match.count).to eq(0)
          post '/graphql', params: {query: mutation}
          expect(Match.count).to eq(1)
        end

        xit 'returns a match' do
          post '/graphql', params: {query: mutation}
          json = JSON.parse(response.body)
          require "pry"; binding.pry
          match = json["data"]["createMatch"]["match"]
          expect(match['sportClubId']).to eq(2)
        end

        xit ' returns an error if missing name input' do
          post '/graphql', params: {query: missing_name}
          json = JSON.parse(response.body)
        end

        def missing_id
          <<~GQL
          mutation{
            createMatch(input:{
              sportClubId: ,
              talentId: 5
              }) {
                match {
                  sportClubId,
                  talentId
                }
              }
            }
            GQL
        end

        def mutation
          <<~GQL
          mutation{
            createMatch(input:{
              sportClubId: 2,
              talentId: 5
              }) {
                match {
                  sportClubId,
                  talentId
                }
              }
            }
            GQL
        end
      end
    end
  end
end
