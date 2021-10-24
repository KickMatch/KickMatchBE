require 'rails_helper'

RSpec.describe Types::TalentType do
  self.let(:subject) do
    self.described_class #allows tesing of a module
  end

  types = GraphQL::Define::TypeDefiner.instance

  it 'has attribute fields available' do
    expect(subject).to have_field(:id)
    expect(subject).to have_field(:name).of_type(types.String)
    expect(subject).to have_field(:age).of_type(types.Int)
    expect(subject).to have_field(:height).of_type(types.String)
    expect(subject).to have_field(:weight).of_type(types.Int)
    expect(subject).to have_field(:primary_position).of_type(types.Int)
    expect(subject).to have_field(:secondary_position).of_type(types.Int)
    expect(subject).to have_field(:video_url).of_type(types.String)
  end
end
