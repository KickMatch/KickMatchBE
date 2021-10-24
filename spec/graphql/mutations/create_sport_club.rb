require 'rails_helper'

module Mutations
  module SportClubs
    RSpec.describe CreateSportClub, type: :request do
      describe '.resolve' do
        it 'creates a single instance of a sports club' do
          expect(SportClub.count).to eq(0)

          post '/graphql', params: {query: mutation}
          expect(SportClub.count).to eq(1)
        end

        it 'returns a sport club' do
          post '/graphql', params: {query: mutation}
          json = JSON.parse(response.body)
          club_data = json["data"]["createSportClub"]["sportClub"]
          expect(club_data['name']).to eq('Test Team')
          expect(club_data['location']).to eq('Great City')
          expect(club_data['league']).to eq('Test League')
        end

        it ' returns an error if missing name input' do
          post '/graphql', params: {query: missing_name}
          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Cannot return null for non-nullable field CreateSportClubPayload.sportClub")
        end

        it ' returns an error if missing location input' do
          post '/graphql', params: {query: missing_location}
          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Cannot return null for non-nullable field CreateSportClubPayload.sportClub")
        end

        it ' returns an error if missing league input' do
          post '/graphql', params: {query: missing_league}
          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Cannot return null for non-nullable field CreateSportClubPayload.sportClub")
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

        def missing_name
          <<~GQL
          mutation{
            createSportClub(input:{
              name: "",
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

        def missing_location
          <<~GQL
          mutation{
            createSportClub(input:{
              name: "Test Team",
              location: "",
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

        def missing_league
          <<~GQL
          mutation{
            createSportClub(input:{
              name: "Test Team",
              location: "Great City",
              league: "",
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
