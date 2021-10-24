require 'rails_helper'

RSpec.describe Talent do
  describe 'relationships' do
    it {should have_many(:matches) }
    it {should have_many(:sport_clubs).through(:matches) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:height) }
    it { should validate_presence_of(:weight) }
    it { should validate_presence_of(:primary_position) }
    it { should validate_presence_of(:secondary_position) }
    it { should validate_presence_of(:video_url) }
  end
end
