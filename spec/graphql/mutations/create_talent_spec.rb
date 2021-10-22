require 'rails_helper'

module Mutations
  module Talents
    RSpec.describe CreateTalent, type: :request do
      describe '.resolve' do
        it 'creates a single instance of talent' do
          expect(Talent.count).to eq(0)
          post '/graphql', params: {query: mutation}
          expect(Talent.count).to eq(1)
        end

        it 'returns a talent/player' do
          post '/graphql', params: {query: mutation}
          json = JSON.parse(response.body)
          talent_data = json["data"]["createTalent"]["talent"]
          expect(talent_data['name']).to eq('Test Name')
          expect(talent_data['age']).to eq(13)
          expect(talent_data['height']).to eq("5'1")
          expect(talent_data['weight']).to eq(105)
          expect(talent_data['primaryPosition']).to eq(1)
          expect(talent_data['secondaryPosition']).to eq(2)
          expect(talent_data['videoUrl']).to eq('youtube.com/test')
        end

# NEED TO ADD ERROR COVERAGE FOR MISSING PARAMS/INPUT
        it ' returns an error if missing name input' do
          post '/graphql', params: {query: missing_name}
          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
        end

        def missing_name
          <<~GQL
          mutation{
            createTalent(input:{
              name: "",
              age: 13,
              height: "5'1",
              weight: "105",
              primaryPosition: 1,
              secondaryPosition: 2,
              videoUrl: "youtube.com/test"
            }) {
              talent {
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
           }
           GQL
        end

        def mutation
          <<~GQL
          mutation{
            createTalent(input:{
              name: "Test Name",
              age: 13,
              height: "5'1",
              weight: "105",
              primaryPosition: 1,
              secondaryPosition: 2,
              videoUrl: "youtube.com/test"
            }) {
              talent {
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
           }
           GQL
        end
      end
    end
  end
end
