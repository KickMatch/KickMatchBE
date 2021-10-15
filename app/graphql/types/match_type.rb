module Types
  class MatchType < Types::BaseObject
    field :id, ID, null: false
    field :sport_club_id, Integer, null: true
    field :talent_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
