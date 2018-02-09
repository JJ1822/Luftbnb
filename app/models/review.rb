class Review < ApplicationRecord
  validates :body, presence: true
  validates :rating, inclusion: { in: (1..5) }

  belongs_to :spot
end
