class Article < ApplicationRecord
	mount_uploader :video, VideoUploader
    validates :title, :video, :presence => true

    belongs_to :user

    def self.search(search, word)
        if search == "forward_match"
                        @article = Article.where("name LIKE?","#{word}%")
        elsif search == "backward_match"
                        @article = Article.where("name LIKE?","%#{word}")
        elsif search == "perfect_match"
                        @article = Article.where(name: "#{word}")
        elsif search == "partial_match"
                        @article = Article.where("name LIKE?","%#{word}%")
        else
                        @article = Article.all
        end
end
end
