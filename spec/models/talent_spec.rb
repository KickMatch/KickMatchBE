require 'rails_helper'

RSpec.describe Talent do
  describe 'relationships' do
    it {should have_many(:matches) }
    it {should have_many(:sport_clubs).through(:matches) }
  end
end
