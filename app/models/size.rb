class Size < ApplicationRecord
  has_many :shoes
  def self.search(search, word)
    if search == "forward_match"
                    sizes = Size.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
                    sizes = Size.where("name LIKE?","%#{word}")
    elsif search == "perfect_match"
                    sizes = Size.where(name: "#{word}")
    elsif search == "partial_match"
                    sizes = Size.where("name LIKE?","%#{word}%")
    else
                    sizes = Size.all
    end
  end
end
