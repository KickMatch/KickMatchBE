require 'rails_helper'

module Mutations
  module Match
    RSpec.describe CreateMatch, type: :request do
      describe '.resolve' do
        it 'creates a single instance of a match' do
          expect(Match.count).to eq(0)

          post '/graphql', params: {query: mutation}
          expect(Match.count).to eq(1)
        end

        it 'returns a match' do
          post '/graphql', params: {query: mutation}
          json = JSON.parse(response.body)
          match = json["data"]["createMatch"]["match"]
          # expect(club_data['name']).to eq('Test Team')
          # expect(club_data['location']).to eq('Great City')
          # expect(club_data['league']).to eq('Test League')
        end

# NEED TO ADD ERROR COVERAGE FOR MISSING PARAMS/INPUT
        xit ' returns an error if missing name input' do
          post '/graphql', params: {query: missing_name}
          json = JSON.parse(response.body)
        end

        def missing_name
          <<~GQL
          mutation{
            createSportClub(input:{
              name: "",
              location: "Great City",
              league: "Test League",
            }) {
              talent {
                 id,
                 name,
                 location,
                 league
               }
             }
           }
           GQL
        end

        def mutation
          <<~GQL
          mutation{
            createSportClub(input:{
              name: "Test Team",
              location: "Great City",
              league: "Test League",
            }) {
              sportClub {
                 id,
                 name,
                 location,
                 league
               }
             }
           }
           GQL
        end
      end
    end
  end
end
