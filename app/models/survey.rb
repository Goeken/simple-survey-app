class Survey < ApplicationRecord
  has_many :responses, dependent: :destroy
  validates :question, presence: true, length: { maximum: 150 }

  scope :with_response_data, lambda {
    select(
      'surveys.*,' +
      ' COUNT(responses.id) AS total_count,' +
      ' COUNT(CASE WHEN responses.answer = true THEN 1 END) * 100.0 / ' +
      ' CASE WHEN COUNT(responses.id) = 0 THEN 1 ELSE COUNT(responses.id) END AS yes_percentage,' +
      ' COUNT(CASE WHEN responses.answer = false THEN 1 END) * 100.0 / ' +
      ' CASE WHEN COUNT(responses.id) = 0 THEN 1 ELSE COUNT(responses.id) END AS no_percentage'
    )
      .left_joins(:responses)
      .group('surveys.id')
  }
end
