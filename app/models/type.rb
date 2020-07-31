class Type < ApplicationRecord
	has_many :shoe_type_relationships, dependent: :destroy
    has_many :types, through: :shoe_type_relationships
end
