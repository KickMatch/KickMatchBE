module Types
  class MutationType < Types::BaseObject
    field :create_talent, mutation: Mutations::CreateTalent
    # field :destroy_talent, mutation: Mutations::DestroyTalent

    # field :create_club, mutation: Mutations::CreateClub
    # field :destroy_club, mutation: Mutations::DestroyClub
    field :create_match, mutation: Mutations::CreateMatch
  end
end
