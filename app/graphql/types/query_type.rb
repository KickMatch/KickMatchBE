module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField

    # /talent
    field :all_talent, [Types::TalentType], null: false

    def all_talent
      Talent.all
    end

    field :talent, Types::TalentType, null: false do
      argument :id, ID, required: true
    end

    def talent(id:)
      Talent.find(id)
    end

    #SportClubs
    field :all_clubs, [Types::SportClubType], null: false

    def all_clubs
      SportClub.all
    end

    field :club, [Types::SportClubType], null: false do
      argument :id, ID, required: true
    end

    def club(id:)
      SportClub.find(id)
    end
  end
end
