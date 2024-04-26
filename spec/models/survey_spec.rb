require 'rails_helper'

RSpec.describe Survey, type: :model do
  describe 'associations' do
    it { should have_many(:responses) }
  end

  describe 'validations' do
    it { should validate_presence_of(:question) }
    it { should validate_length_of(:question).is_at_most(150) }
  end
end
