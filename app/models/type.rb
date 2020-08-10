class Type < ApplicationRecord
  has_many :shoes

  def self.search(search, word)
    if search == "forward_match"
                    types = Type.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
                    types = Type.where("name LIKE?","%#{word}")
    elsif search == "perfect_match"
                    types = Type.where(name: "#{word}")
    elsif search == "partial_match"
                    types = Type.where("name LIKE?","%#{word}%")
    else
                    types = Type.all
    end
  end
end
