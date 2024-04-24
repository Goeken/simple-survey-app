class Survey < ApplicationRecord
  has_many :responses

  validates :answer, inclusion: { in: [true, false] }
end
