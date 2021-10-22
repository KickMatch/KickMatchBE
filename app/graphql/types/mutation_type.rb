module Types
  class MutationType < Types::BaseObject
    field :create_talent, mutation: Mutations::CreateTalent
    field :create_sport_club, mutation: Mutations::CreateSportClub
    # field :destroy_talent, mutation: Mutations::DestroyTalent

    # field :create_club, mutation: Mutations::CreateClub
    # field :destroy_club, mutation: Mutations::DestroyClub
  end
end
