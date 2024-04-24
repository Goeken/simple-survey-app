class Response < ApplicationRecord
  belongs_to :survey

  validates :question, presence: true
end
