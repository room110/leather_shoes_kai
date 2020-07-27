class Brand < ApplicationRecord
  has_many :shoe_brand_relationships
  has_many :shoes, through: :shoe_brand_relationships
end