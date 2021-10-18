module Types
  class TalentType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :age, Integer, null: true
    field :height, String, null: true
    field :weight, Integer, null: true
    field :primary_position, Integer, null: true
    field :secondary_position, Integer, null: true
    field :video_url, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
