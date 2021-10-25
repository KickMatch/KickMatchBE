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
    it { should validate_presence_of(:zipcode) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:dominant_foot) }
    it { should validate_presence_of(:vertical_jump) }
    it { should validate_presence_of(:juggling_record) }
    it { should validate_presence_of(:talents) }
    it { should validate_presence_of(:awards) }
  end
end
