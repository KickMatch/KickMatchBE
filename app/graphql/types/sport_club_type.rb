module Types
  class SportClubType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :location, String, null: true
    field :league, String, null: true
    field :zipcode, Integer, null: true
    field :email, String, null: true
    field :phone, String, null: true
    field :tournaments, String, null: true
    field :coach_resume, String, null: true
    field :currently_looking, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
