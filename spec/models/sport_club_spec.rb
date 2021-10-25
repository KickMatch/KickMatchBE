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
    it { should validate_presence_of(:zipcode) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:tournaments) }
    it { should validate_presence_of(:coach_resume) }
    it { should validate_presence_of(:currently_looking) }
  end
end
