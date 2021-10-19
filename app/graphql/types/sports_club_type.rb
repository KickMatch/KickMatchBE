module Types
  class SportsClubType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :location, String, null: true
    field :league, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
