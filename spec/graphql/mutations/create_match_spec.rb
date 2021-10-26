require 'rails_helper'

module Mutations
  module Matches
    RSpec.describe CreateMatch, type: :request do
      describe '.resolve' do
        before(:each) do
          @team = SportClub.create(name: 'Denver SoccerClub', location: 'Denver CO', league: 'G leagure', zipcode: 80207, email: 'denfutbol@gmail.com', phone: '720-555-4114', tournaments: 'Colorado Championchip', coach_resume: 'Fred Hampton is a motivated Illinois Native interested in using his pro experience to guide youth to their full potential.', currently_looking: 'Goalie,  Mid Foward')
          @player = Talent.create(name: "Jo", age: 19, height: "6'3", weight: 165, primary_position: 'Goalie', secondary_position: 'Mid Fielder', video_url: 'www.futboltube/jo', zipcode: 80013, email: 'jo@futboltube', dominant_foot: 'R', goals_made_ls: 4, vertical_jump: 3.7, forty_dash: 7.8, juggling_record: 30, awards: 'MVP', talents: 'Scoring')
        end

        it 'creates a single instance of a match' do
          expect(Match.count).to eq(0)
          post '/graphql', params: {query: mutation}
          expect(Match.count).to eq(1)
        end

        it 'returns a match' do
          post '/graphql', params: {query: mutation}
          json = JSON.parse(response.body)
         
          match = json["data"]["createMatch"]["match"]
          expect(match['sportClubId']).to eq(2)
        end

        it ' returns an error if missing name input' do
          post '/graphql', params: {query: missing_id}
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
              sportClubId: #{@team.id},
              talentId: #{@player.id}
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
