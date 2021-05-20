class Post < ApplicationRecord
    has_many :comments
    has_many :tagposts
    has_many :console, through: :tagposts
    belongs_to :user
end
