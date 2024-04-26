require 'rails_helper'

RSpec.describe Response, type: :model do
  describe 'associations' do
    it { should belong_to(:survey) }
  end

  describe 'validations' do
    it { should validate_inclusion_of(:answer).in_array([true, false]) }
  end
end
