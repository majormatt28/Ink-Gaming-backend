class Post < ApplicationRecord
    has_many :comments
    has_many :likes
    # has_many :tagposts
    # has_many :console, through: :consoleposts
    belongs_to :user

    validates :title, :content, :media_type, presence: true

    def likes_counted
        self.likes.count
    end

    # def user_id
    #     self.user.id
    # end

    # def username
    #     self.user.username
    # end
end
