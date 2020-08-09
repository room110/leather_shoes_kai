class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          # Omniauthを使用するオプション
         :omniauthable, omniauth_providers: %i[google_oauth2]
  

  validates :name, presence: true
  has_many :article,dependent: :destroy
  has_many :shoes,dependent: :destroy
  has_many :shoe_images,dependent: :destroy
  has_many :shoe_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :sns_credential, dependent: :destroy

  has_many :user_relationships
  #relationshipsテーブルのfollow_idを参考にして、followingsモデルにアクセス。
  has_many :followings, through: :user_relationships, source: :follow
  has_many :reverse_of_user_relationships, class_name: 'UserRelationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_user_relationships, source: :user
  attachment :profile_image



def follow(other_user)
  	#フォローしようとしている other_user が自分でないかを検証。
    unless self == other_user
      self.user_relationships.find_or_create_by(follow_id: other_user.id)
    end
  end


  def unfollow(other_user)
  	#既にフォローされている場合にフォローが重複して保存されなくなる。
    relationship = self.user_relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end



  def following?(other_user)
  	#フォローしている User を取得し、include?によって、重複していないかを確認。
    self.followings.include?(other_user)
  end


  def self.search(search,word)
          if search == "forward_match"
                           @user = User.where("name LIKE?","#{word}%")
          elsif search == "backward_match"
                           @user = User.where("name LIKE?","%#{word}")
          elsif search == "perfect_match"
                           @user = User.where(name: "#{word}")
          elsif search == "partial_match"
                           @user = User.where("name LIKE?","%#{word}%")
          else
                           @user = User.all
          end
  end
  
def self.find_for_google(auth)
    user = User.find_by(email: auth.info.email)

    if user.nil?
       user = User.create(name: auth.info.name,
                          email: auth.info.email,
                          password: Devise.friendly_token[0,20]
                          )
    end
    user
end

  def self.without_sns_data(auth)
    user = User.where(email: auth.info.email).first
#binding.pry
      if user.present?
        sns = SnsCredential.create(
          uid: auth.uid,
          provider: auth.provider,
          user_id: user.id
        )
      else
        user = User.new(
          name: auth.info.name,
          email: auth.info.email,
        )
        sns = SnsCredential.new(
          uid: auth.uid,
          provider: auth.provider
        )
      end
      return { user: user ,sns: sns}
    end

   def self.with_sns_data(auth, snscredential)
    user = User.where(id: snscredential.user_id).first
    unless user.present?
      user = User.new(
        name: auth.info.name,
        email: auth.info.email,
      )
    end
    return {user: user}
   end

  def self.find_oauth(auth)
    uid = auth.uid
    provider = auth.provider
    snscredential = SnsCredential.where(uid: uid, provider: provider).first
      if snscredential.present?
        user = with_sns_data(auth, snscredential)[:user]
        sns = snscredential
      else
        user = without_sns_data(auth)[:user]
        sns = without_sns_data(auth)[:sns]
      end
    return { user: user ,sns: sns}
  end

end
