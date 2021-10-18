module Types
  class MutationType < Types::BaseObject
    field :create_talent, mutation: Mutations::CreateTalent
  end
end
