require 'rails_helper'

RSpec.describe SportClub do
  describe 'relationships' do
    it {should have_many(:matches) }
    it {should have_many(:talents).through(:matches) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:league) }
  end
end
