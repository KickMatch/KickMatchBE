require 'rails_helper'

RSpec.describe SportClub do
  describe 'relationships' do
    it {should have_many(:matches) }
    it {should have_many(:talents).through(:matches) }
  end
end
