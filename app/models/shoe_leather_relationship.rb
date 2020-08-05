class ShoeLeatherRelationship < ApplicationRecord
	belongs_to :shoe
    belongs_to :leather
end
