class Type < ApplicationRecord
	has_many :shoe_type_relationships
    has_many :types, through: :shoe_type_relationships
end
