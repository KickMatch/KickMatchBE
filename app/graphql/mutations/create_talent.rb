class Mutations::CreateTalent < Mutations::BaseMutation
  argument :name, String, required: true
  argument :age, Integer, required: true
  argument :height, String, required: true
  argument :weight, Integer, required: true
  argument :primary_position, String, required: true
  argument :secondary_position, String, required: true
  argument :video_url, String, required: true
  argument :zipcode, Integer, required: true
  argument :email, String, required: true
  argument :dominant_foot, String, required: true
  argument :goals_made_ls, Integer, required: true
  argument :vertical_jump, Float, required: true
  argument :forty_dash, Float, required: true
  argument :juggling_record, Integer, required: true
  argument :talents, String, required: true
  argument :awards, String, required: true

  field :talent, Types::TalentType, null: false
	field :errors, [String], null: false

  def resolve(name:,
              age:,
              height:,
              weight:,
              primary_position:,
              secondary_position:,
              video_url:,
              zipcode:,
              email:,
              dominant_foot:,
              goals_made_ls:,
              vertical_jump:,
              forty_dash:,
              juggling_record:,
              talents:,
              awards:)
    talent = Talent.create(
      name: name,
      age: age,
      height: height,
      weight: weight,
      primary_position: primary_position,
      secondary_position: secondary_position,
      video_url: video_url,
      zipcode: zipcode,
      email: email,
      dominant_foot: dominant_foot,
      goals_made_ls: goals_made_ls,
      vertical_jump: vertical_jump,
      forty_dash: forty_dash,
      juggling_record: juggling_record,
      talents: talents,
      awards: awards)
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
