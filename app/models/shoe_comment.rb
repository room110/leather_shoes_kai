class ShoeComment < ApplicationRecord
  belongs_to :user
  belongs_to :shoe
  validates :comment, presence: true
end
