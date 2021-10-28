module Types
  class MutationType < Types::BaseObject
    field :create_talent, mutation: Mutations::CreateTalent
    field :create_sport_club, mutation: Mutations::CreateSportClub
    field :create_match, mutation: Mutations::CreateMatch
  end
end
