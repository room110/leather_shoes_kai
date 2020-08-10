class Brand < ApplicationRecord
  #has_many :shoe_brand_relationships
  #has_many :shoes, through: :shoe_brand_relationships
  has_many :shoes
def self.search(search, word)
        if search == "forward_match"
                        brands = Brand.where("name LIKE?","#{word}%")
        elsif search == "backward_match"
                        brands = Brand.where("name LIKE?","%#{word}")
        elsif search == "perfect_match"
                        brands = Brand.where(name: "#{word}")
        elsif search == "partial_match"
                        brands = Brand.where("name LIKE?","%#{word}%")
        else
                        brands = Brand.all
        end

end



end