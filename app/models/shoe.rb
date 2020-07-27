class Shoe < ApplicationRecord
  belongs_to :user
  has_many :shoe_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :shoe_brand_relationships
  has_many :brands, through: :shoe_brand_relationships
  has_many :shoe_size_relationships
  has_many :sizes, through: :shoe_size_relationships
  has_many :shoe_type_relationships
  has_many :types, through: :shoe_type_relationships
  
  attachment :shoe_image
  #引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べる。
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
