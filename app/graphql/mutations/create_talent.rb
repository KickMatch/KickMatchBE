class Mutations::CreateTalent < Mutations::BaseMutation
  argument :name, String, required: true
  argument :age, Integer, required: true
  argument :height, String, required: true
  argument :weight, String, required: true
  argument :primary_position, Integer, required: true
  argument :secondary_position, Integer, required: true
  argument :video_url, String, required: true

  field :talent, Types::TalentType, null: false
	field :errors, [String], null: false

  def resolve(name:, age:, height:, weight:, primary_position:, secondary_position:, video_url:)
    talent = Talent.create!(name: name, age: age, height: height, weight: weight, primary_position: primary_position, secondary_position: secondary_position, video_url: video_url)
    if talent.save
      {
        talent: talent,
        errors: []
      }
    else
      {
        talent: nil,
        errors: talent.errors.full_messages
      }
    end
  end
end
