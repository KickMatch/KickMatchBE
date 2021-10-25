require 'rails_helper'

RSpec.describe Types::SportClubType do
  self.let(:subject) do
    self.described_class #allows tesing of a module
  end

  types = GraphQL::Define::TypeDefiner.instance

  it 'has attribute fields available' do
    expect(subject).to have_field(:id)
    expect(subject).to have_field(:name).of_type(types.String)
    expect(subject).to have_field(:location).of_type(types.String)
    expect(subject).to have_field(:league).of_type(types.String)
  end
end
