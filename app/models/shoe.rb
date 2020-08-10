class Shoe < ApplicationRecord
  belongs_to :user
  has_many :shoe_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  #has_many :shoe_brand_relationships
  #has_many :brands, through: :shoe_brand_relationships
  belongs_to :brand
  belongs_to :size
  belongs_to :type
  belongs_to :leather
  #has_many :shoe_size_relationships
  #has_many :sizes, through: :shoe_size_relationships
  #has_many :shoe_type_relationships
  #has_many :types, through: :shoe_type_relationships

  attachment :shoe_image
  #引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べる。
  def favorited_by?(user)
  favorites.where(user_id: user.id).exists?
  end

  def self.search(search, word)
    if search == "forward_match"
                    @shoe = Shoe.where("title LIKE?","#{word}%")
    elsif search == "backward_match"
                    @shoe = Shoe.where("title LIKE?","%#{word}")
    elsif search == "perfect_match"
                    @shoe = Shoe.where(title: "#{word}")
    elsif search == "partial_match"
                    @shoe = Shoe.where("title LIKE?","%#{word}%")
    else
                    @shoe = Shoe.all
    end
  end
end
