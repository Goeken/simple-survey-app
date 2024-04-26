class Survey < ApplicationRecord
  has_many :responses, dependent: :destroy
  validates :question, presence: true, length: { maximum: 150 }
end
