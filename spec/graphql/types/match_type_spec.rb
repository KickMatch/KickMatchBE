require 'rails_helper'

RSpec.describe Types::MatchType do
  self.let(:subject) do
    self.described_class #allows tesing of a module
  end

  types = GraphQL::Define::TypeDefiner.instance

  it 'has attribute fields available' do
    expect(subject).to have_field(:id)
    expect(subject).to have_field(:sport_club_id).of_type(types.Int)
    expect(subject).to have_field(:talent_id).of_type(types.Int)
  end
end
