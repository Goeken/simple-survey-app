require 'rails_helper'

RSpec.describe Response, type: :model do
  describe 'associations' do
    it { should belong_to(:survey) }
  end

  describe 'validations' do
    it { should validate_presence_of(:answer) }
  end
end
