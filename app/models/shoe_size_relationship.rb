class ShoeSizeRelationship < ApplicationRecord
	belongs_to :shoe
    belongs_to :size
end
