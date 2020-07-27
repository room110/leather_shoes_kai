class ShoeTypeRelationship < ApplicationRecord
	belongs_to :shoe
    belongs_to :type
end
