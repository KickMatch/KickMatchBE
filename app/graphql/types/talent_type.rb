module Types
  class TalentType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :age, Integer, null: true
    field :height, String, null: true
    field :weight, Integer, null: true
    field :primary_position, String, null: true
    field :secondary_position, String, null: true
    field :video_url, String, null: true
    field :zipcode, Integer, null: true
    field :email, String, null: true
    field :dominant_foot, String, null: true
    field :goals_made_ls, Integer, null: true
    field :vertical_jump, Float, null: true
    field :forty_dash, Float, null: true
    field :juggling_record, Integer, null: true
    field :talents, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
