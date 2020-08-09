class Leather < ApplicationRecord
  has_many :shoes
  def self.search(search, word)
    if search == "forward_match"
                    leathers = Leather.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
                    leathers = Leather.where("name LIKE?","%#{word}")
    elsif search == "perfect_match"
                    leathers = Leather.where(name: "#{word}")
    elsif search == "partial_match"
                    leathers = Leather.where("name LIKE?","%#{word}%")
    else
                    leathers = Leather.all
    end
  end
end
