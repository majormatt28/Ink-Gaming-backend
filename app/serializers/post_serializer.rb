class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :link, :media_type, :user

    has_many :comments
end