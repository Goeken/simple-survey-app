class Response < ApplicationRecord
  belongs_to :survey
  validates :answer, presence: true, inclusion: { in: [true, false] }
end
