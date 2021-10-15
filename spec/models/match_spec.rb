require 'rails_helper'

RSpec.describe Match do
  describe 'relationships' do
    it {should belong_to(:talent) }
    it {should belong_to(:sport_club) }
  end
end
