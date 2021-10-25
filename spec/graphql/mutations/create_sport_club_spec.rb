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
        end

        def missing_name
          <<~GQL
          mutation{
            createSportClub(input:{
              name: "",
              location: "Great City",
              league: "Test League",
              zipcode: 80224,
              email: "equipo@futbol.com",
              phone: "3033033333",
              tournaments: "Fancy Tournament",
              coachResume: "Great coach who is a good mentor",
              currentlyLooking: "Goalie,  Mid Foward"
            }) {
              talent {
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
              zipcode: 80224,
              email: "equipo@futbol.com",
              phone: "3033033333",
              tournaments: "Fancy Tournament",
              coachResume: "Great coach who is a good mentor",
              currentlyLooking: "Goalie,  Mid Foward"
            }) {
              sportClub {
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
           }
           GQL
        end
      end
    end
  end
end
