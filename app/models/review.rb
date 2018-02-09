class Review < ApplicationRecord
  validates :body
  validate :rating, inclusion: { in: (1..5) }

  belongs_to :spot
end
