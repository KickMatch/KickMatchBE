FactoryBot.define do
  factory :sport_club do
    sequence(:name) { Faker::Sports::Football.team }
    sequence(:location) { Faker::Address.city }
    sequence(:league) { Faker::Sports::Football.competition }
  end
end
