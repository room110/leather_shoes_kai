class Size < ApplicationRecord
	has_many :shoe_size_relationships, dependent: :destroy
    has_many :shoes, through: :shoe_size_relationships
end
