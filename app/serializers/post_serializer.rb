class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :link, :media_type, :user, :likes, :likes_counted

    has_many :comments
end