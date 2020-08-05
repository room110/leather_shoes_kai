class Leather < ApplicationRecord
  has_many :shoe_leather_relationships
  has_many :shoes, through: :shoe_leather_relationships
end
