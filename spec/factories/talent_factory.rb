FactoryBot.define do
  factory :talent do
    sequence(:name) { Faker::Sports::Football.player }
    sequence(:age) { Faker::Number.number(digits: 2) }
    sequence(:height) { Faker::Measurement.metric_height }
    sequence(:weight) { Faker::Measurement.weight }
    sequence(:primary_position) { Faker::Number.number(digits: 1) }
    sequence(:secondary_position) { Faker::Number.number(digits: 1) }
    sequence(:video_url) { Faker::Internet.url }
  end
end
