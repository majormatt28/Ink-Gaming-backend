class User < ApplicationRecord
    has_many :comments
    has_many :posts

    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}
    # validates :email, :password, presence: true
    # validates :username, uniqueness: true
end
