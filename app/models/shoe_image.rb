class ShoeImage < ApplicationRecord
	belongs_to :user
	attachment :image
end
