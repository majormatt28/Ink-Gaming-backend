class Console < ApplicationRecord
    has_many :consoleposts
    has_many :posts, through: :consoleposts
end
