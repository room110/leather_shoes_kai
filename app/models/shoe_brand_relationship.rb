class ShoeBrandRelationship < ApplicationRecord
	belongs_to :shoe
    belongs_to :brand
end
