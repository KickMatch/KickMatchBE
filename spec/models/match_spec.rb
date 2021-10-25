require 'rails_helper'

RSpec.describe Match do
  describe 'relationships' do
    it {should belong_to(:talent) }
    it {should belong_to(:sport_club) }
    it { should validate_presence_of(:sport_club_id) }
    it { should validate_presence_of(:talent_id) }
  end
end
