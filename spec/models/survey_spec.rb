require 'rails_helper'

RSpec.describe Survey, type: :model do
  describe 'associations' do
    it { should have_many(:responses).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:question) }
    it { should validate_length_of(:question).is_at_most(150) }
  end

  describe 'destroying a survey' do
    let!(:survey) { Survey.create(question: 'Sample question') }
    let!(:response1) { survey.responses.create(answer: true) }
    let!(:response2) { survey.responses.create(answer: false) }

    it 'deletes associated responses' do
      expect { survey.destroy }.to change { Response.count }.by(-2)
    end
  end
end
