class Console < ApplicationRecord
    has_many :tagposts
    has_many :posts, through: :tagposts
end
