class Post < ApplicationRecord
    has_many :comments
    # has_many :tagposts
    # has_many :console, through: :consoleposts
    belongs_to :user

    validates :title, :content, :media_type, presence: true
end
