require 'rails_helper'

module Mutations
  module Talents
    RSpec.describe CreateTalent, type: :request do
      describe '.resolve' do
        it 'creates a talent/player' do
          post '/graphql', params: {query: mutation}
          json = Oj.load(response.body, symbol_keys: true)
          talent = Talent.first
          expect(talent.name).to eq('Test Name')
        end

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
          expect(talent_data['primaryPosition']).to eq("forward")
          expect(talent_data['secondaryPosition']).to eq("goalie")
          expect(talent_data['videoUrl']).to eq('youtube.com/test')
        end

        it ' returns an error if missing name input' do
          post '/graphql', params: {query: talent_missing_name} # talent_missing_name def is in spec_helper

          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Cannot return null for non-nullable field CreateTalentPayload.talent")
        end

        it ' returns an error if missing age input' do
          post '/graphql', params: {query: talent_missing_age} # talent_missing_name def is in spec_helper

          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Argument 'age' on InputObject 'CreateTalentInput' has an invalid value (nil). Expected type 'Int!'.")
        end

        it ' returns an error if missing height input' do
          post '/graphql', params: {query: talent_missing_height} # talent_missing_name def is in spec_helper

          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Cannot return null for non-nullable field CreateTalentPayload.talent")
        end

        it ' returns an error if missing weight input' do
          post '/graphql', params: {query: talent_missing_weight} # talent_missing_name def is in spec_helper

          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Argument 'weight' on InputObject 'CreateTalentInput' has an invalid value (\"\"). Expected type 'Int!'.")
        end

        it ' returns an error if missing video link' do
          post '/graphql', params: {query: talent_missing_video_url} # talent_missing_name def is in spec_helper

          json = JSON.parse(response.body)
          expect(json).to be_a(Hash)
          expect(json['errors']).to be_an(Array)
          expect(json['errors'][0]['message']).to eq("Cannot return null for non-nullable field CreateTalentPayload.talent")
        end

        def mutation
          <<~GQL
          mutation{
            createTalent(input:{
              name: "Test Name",
              age: 13,
              height: "5'1",
              weight: 105,
              primaryPosition: "forward",
              secondaryPosition: "goalie",
              videoUrl: "youtube.com/test",
              zipcode: 80224,
              email: "gooollllll@futbol.com",
              dominantFoot: "left",
              goalsMadeLs: 7,
              verticalJump: 20.5,
              fortyDash: 8.49,
              jugglingRecord: 7,
              talents: "Ball contol and shooting"
            }) {
              talent {
                 id,
                 name,
                 age,
                 height,
                 weight,
                 primaryPosition,
                 secondaryPosition,
                 videoUrl,
                 zipcode,
                 email,
                 dominantFoot,
                 goalsMadeLs,
                 verticalJump,
                 fortyDash,
                 jugglingRecord,
                 talents
               }
             }
           }
           GQL
        end
      end
    end
  end
end
