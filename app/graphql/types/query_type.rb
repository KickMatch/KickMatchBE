module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField
    
    field :all_talent, [Types::TalentType], null: false

    def all_talent
      Talent.all
    end

    field :talent, [Types::TalentType], null: false do
      argument :id, ID, required: true
    end

    def talent(id:)
      Talent.find(id)     
    end
  end
end
