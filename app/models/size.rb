class Size < ApplicationRecord
	has_many :shoe_size_relationships
    has_many :shoes, through: :shoe_size_relationships
end
