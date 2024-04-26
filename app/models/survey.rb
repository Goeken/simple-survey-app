class Survey < ApplicationRecord
  has_many :responses
  validates :question, presence: true, length: { maximum: 150 }
end
