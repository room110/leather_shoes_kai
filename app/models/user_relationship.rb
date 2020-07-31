class UserRelationship < ApplicationRecord
	belongs_to :user
  #followモデルはないので、userモデルにbelongs_toするように指定。
  belongs_to :follow, class_name:"User"
  validates :user_id, presence: true
  validates :follow_id, presence: true
end
